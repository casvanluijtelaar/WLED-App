import 'package:flutter/widgets.dart';
import 'package:wled/core/core.dart';

class DeviceListSwitch extends StatefulWidget {
  const DeviceListSwitch({
    Key? key,
    required this.value,
    this.onChanged,
    this.height = 30,
    this.width = 50,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool>? onChanged;
  final double height;
  final double width;

  @override
  _DeviceListSwitchState createState() => _DeviceListSwitchState();
}

class _DeviceListSwitchState extends State<DeviceListSwitch> {

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
            width: widget.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.1544),
                borderRadius: BorderRadius.all(Radius.circular(widget.height)),
              ),
            ),
          ),
          AnimatedPositioned(
            key: const Key('test_switch_position'),
            duration: Kduration.short,
            left: _value ? widget.width - widget.height : 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(widget.height)),
                color: const Color.fromRGBO(255, 255, 255, 1),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 1),
                    color: Color.fromRGBO(0, 0, 0, 0.3848),
                  ),
                ],
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
