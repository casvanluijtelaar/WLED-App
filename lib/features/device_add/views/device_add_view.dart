import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wled/core/core.dart';
import 'package:wled/features/device_add/widgets/background_shape.dart';

import '../bloc/device_add_bloc.dart';

class DeviceAddView extends StatelessWidget {
  const DeviceAddView({
    Key? key,
    required this.buttonKey,
  }) : super(key: key);

  final GlobalKey buttonKey;

  @override
  Widget build(BuildContext context) => BlocProvider<DeviceAddBloc>(
        create: (BuildContext context) => getIt<DeviceAddBloc>(),
        child: DeviceAdd(buttonKey: buttonKey),
      );
}

class DeviceAdd extends StatefulWidget {
  const DeviceAdd({
    Key? key,
    required this.buttonKey,
  }) : super(key: key);

  final GlobalKey buttonKey;

  @override
  _DeviceAddState createState() => _DeviceAddState();
}

class _DeviceAddState extends State<DeviceAdd> {
  Offset getButtonPosition() {
    final context = widget.buttonKey.currentContext;
    final renderbox = context?.findRenderObject() as RenderBox?;

    if (renderbox == null) return Offset.zero;
    return renderbox.localToGlobal(Offset.zero);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background
        SizedBox.expand(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Color(0x15000000)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600,
              maxHeight: 400,
            ),
            child: Material(
              color: Colors.transparent,
              elevation: 2,
              child: CustomPaint(
                painter: BackgroundShape(
                    backgroundColor: context.theme.backgroundColor),
                child: const Center(
                  child: Text('aaaaaah'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
