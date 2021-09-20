import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'package:wled/core/core.dart';

class DeviceListSlider extends StatefulWidget {
  const DeviceListSlider({
    Key? key,
    this.value = 0,
    this.size = 112,
    this.enabled = false,
    this.color,
    this.onChanged,
    this.onPressed,
  }) : super(key: key);

  final double value;
  final double size;
  final bool enabled;
  final Color? color;
  final ValueChanged<double>? onChanged;
  final VoidCallback? onPressed;

  @override
  _DeviceListSliderState createState() => _DeviceListSliderState();
}

class _DeviceListSliderState extends State<DeviceListSlider>
    with SingleTickerProviderStateMixin {

  late Animation<double> _animation;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Consts.durationMedium,
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 100).animate(_controller)
      ..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return SleekCircularSlider(
      max: 255,
      initialValue: widget.value,
      appearance: CircularSliderAppearance(
        size: widget.size,
        startAngle: 180,
        angleRange: 270,
        animationEnabled: false,
        infoProperties: InfoProperties(
          /// when the device is enabled, change the percentage color to the
          /// active led color
          mainLabelStyle: theme.textTheme.headline4!.copyWith(
            color: widget.enabled ? widget.color : theme.dividerColor,
          ),
        ),
        customWidths: CustomSliderWidths(
          trackWidth: context.isPhone ? 5 : 8,
          handlerSize: 4,
          shadowWidth: _animation.value,
        ),
        customColors: CustomSliderColors(
          dotColor: Colors.white,
          trackColor: theme.dividerColor,
          shadowColor: widget.color,
          shadowStep: 5,
          shadowMaxOpacity: 0.05,

          /// when the device is enabled, change the bar color to the
          /// active led color
          progressBarColor: widget.enabled ? widget.color : Colors.transparent,
        ),
      ),
      onChangeEnd: (value) {
        widget.onChanged?.call(value);
        _controller.reverse();
 
      },
      onChangeStart: (_) {
        _controller.forward();
      
      },
      innerWidget: (percentage) {
        /// map brightness from 0 - 255 to a percentage to display
        final roundedValue = percentage.map(0, 255, 0, 100).ceil().toInt();
        return Center(
          child: IconButton(
            iconSize: 40,
            padding: EdgeInsets.zero,
            onPressed: widget.onPressed,
            icon: Text(
              roundedValue != 0
                  ? '$roundedValue%'
                  : context.locale.deviceListPowerOff,
              style: theme.textTheme.headline4!.copyWith(
                color: widget.enabled ? widget.color : theme.dividerColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
