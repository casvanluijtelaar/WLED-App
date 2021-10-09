import 'package:flutter/widgets.dart';
import 'package:wled/core/core.dart';

class DeviceListSwitch extends StatefulWidget {
  const DeviceListSwitch({
    Key? key,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  _DeviceListSwitchState createState() => _DeviceListSwitchState();
}

class _DeviceListSwitchState extends State<DeviceListSwitch> {
  static const double _kTrackWidth = 50;
  static const double _kTrackHeight = 30;
  static const double _kTrackRadius = _kTrackHeight / 2.0;
  static const Color _kTrackColor = Color.fromRGBO(0, 0, 0, 0.1544);

  static const double _kSwitchSize = 30;
  static const Color _kSwitchColor = Color.fromRGBO(255, 255, 255, 1);
  static const BoxShadow _kSwitchShadow = BoxShadow(
    blurRadius: 3,
    offset: Offset(0, 1),
    color: Color.fromRGBO(0, 0, 0, 0.3848),
  );

  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(covariant DeviceListSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != _value) setState(() => _value = widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged?.call(!_value);
        setState(() => _value = !_value);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const SizedBox(
            height: _kTrackHeight,
            width: _kTrackWidth,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: _kTrackColor,
                borderRadius: BorderRadius.all(Radius.circular(_kTrackRadius)),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Kduration.short,
            left: _value ? _kTrackWidth - _kSwitchSize : 0,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(_kTrackRadius),
                ),
                color: _kSwitchColor,
                boxShadow: [_kSwitchShadow],
              ),
              child: SizedBox.square(
                dimension: _kSwitchSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
