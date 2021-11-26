import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:wled/core/core.dart';

import '../bloc/device_add_bloc.dart';
import '../domain/models/ip.dart';
import '../domain/models/name.dart';

class DeviceAddView extends StatelessWidget {
  const DeviceAddView({Key? key, this.editableDevice}) : super(key: key);

  final WledDevice? editableDevice;

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceAddBloc>(
        create: (BuildContext context) =>
            getIt<DeviceAddBloc>()..add(Initial(editableDevice)),
        child: const DeviceAdd(),
      );
}

class DeviceAdd extends StatefulWidget {
  const DeviceAdd({Key? key}) : super(key: key);

  @override
  _DeviceAddState createState() => _DeviceAddState();
}

class _DeviceAddState extends State<DeviceAdd> {
  final _ipFocusNode = FocusNode();
  final _nameFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    /// check the validity of the ip when the textfield loses focus
    _ipFocusNode.addListener(() {
      if (_ipFocusNode.hasFocus) return;
      context.read<DeviceAddBloc>().add(const IpUnfocused());
      FocusScope.of(context).requestFocus(_nameFocusNode);
    });

    /// check the validity of the name when the textfield loses focus
    _nameFocusNode.addListener(() {
      if (_nameFocusNode.hasFocus) return;
      context.read<DeviceAddBloc>().add(const NameUnfocused());
    });

    _ipFocusNode.requestFocus();
  }

  /// map [IpValidationError] to error string
  String? _ipError(BuildContext context, IpValidationError? error) {
    if (error == IpValidationError.empty) {
      return context.locale.deviceAddIpErrorEmpty;
    } else if (error == IpValidationError.invalid) {
      return context.locale.deviceAddIpErrorInvalid;
    } else {
      return null;
    }
  }

  /// map [NameValidationError] to error string
  String? _nameError(BuildContext context, NameValidationError? error) {
    if (error == NameValidationError.toLong) {
      return context.locale.deviceAddNameErrorToLong;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceAddBloc>();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => bloc.add(const Canceled())),
        centerTitle: context.isPhone,
        title: Text(context.locale.deviceAddTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Kpadding.medium),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: BlocBuilder<DeviceAddBloc, DeviceAddState>(
              builder: (context, state) {
                if (state is DeviceAddLoading) return const LoadingWidget();

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(context.locale.deviceAddIpTitle),
                      Kspacer.small,
                      TextFormField(
                        initialValue: state.ip.value,
                        focusNode: _ipFocusNode,
                        decoration: InputDecoration(
                          hintText: context.locale.deviceAddIpHint,
                          errorText: _ipError(context, state.ip.error),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) => bloc.add(IpChanged(value)),
                        textInputAction: TextInputAction.next,
                      ),
                      Kspacer.large,
                      Text(context.locale.deviceAddNameTitle),
                      Kspacer.small,
                      TextFormField(
                        initialValue: state.name.value,
                        focusNode: _nameFocusNode,
                        decoration: InputDecoration(
                          hintText: context.locale.deviceAddNameHint,
                          errorText: _nameError(context, state.name.error),
                          // ignore: lines_longer_than_80_chars
                          helperText: context.locale.deviceAddNameHelper,
                        ),
                        keyboardType: TextInputType.name,
                        onChanged: (value) => bloc.add(NameChanged(value)),
                        textInputAction: TextInputAction.done,
                      ),
                      Kspacer.large,
                      Center(
                        child: ElevatedButton(
                          onPressed: state.status == FormzStatus.valid
                              ? () => bloc.add(const Submitted())
                              : null,
                          child: Text(context.locale.deviceAddSubmit),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _ipFocusNode.dispose();
    _nameFocusNode.dispose();
    super.dispose();
  }
}
