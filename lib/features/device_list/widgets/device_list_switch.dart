import 'package:flutter/widgets.dart';
import 'package:wled/core/core.dart';

class DeviceListSwitch extends StatefulWidget {
  const DeviceListSwitch({
    Key? key,
    required this.value,
    this.onChanged,
    this.height = 30,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool>? onChanged;
  final double height;

  @override
  _DeviceListSwitchState createState() => _DeviceListSwitchState();
}

class _DeviceListSwitchState extends State<DeviceListSwitch> {
  static const double _kTrackWidth = 50;
  static const Color _kTrackColor = Color.fromRGBO(0, 0, 0, 0.1544);
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
          SizedBox(
            height: widget.height,
            width: _kTrackWidth,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: _kTrackColor,
                borderRadius: BorderRadius.all(Radius.circular(widget.height)),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Kduration.short,
            left: _value ? _kTrackWidth - widget.height : 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(widget.height)),
                color: _kSwitchColor,
                boxShadow: const [_kSwitchShadow],
              ),
              child: SizedBox.square(
                dimension: widget.height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
