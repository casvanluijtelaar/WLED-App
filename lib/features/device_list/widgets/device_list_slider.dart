import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wled/core/core.dart';

class DeviceListSlider extends StatefulWidget {
  const DeviceListSlider({
    Key? key,
    this.value = 0,
    this.enabled = false,
    required this.color,
    this.onChanged,
  }) : super(key: key);

  final int value;
  final bool enabled;
  final Color color;
  final ValueChanged<int>? onChanged;

  @override
  _DeviceListSliderState createState() => _DeviceListSliderState();
}

class _DeviceListSliderState extends State<DeviceListSlider> {
  int _sliderValue = 0;

  static const double _kTrackWidth = double.maxFinite;
  static const double _kTrackHeight = 30;
  static const double _kTrackRadius = _kTrackHeight / 2.0;

  static const double _kSwitchWidth = 30;
  static const double _kSwitchHeight = 30;
  static const Color _kSwitchColor = Color.fromRGBO(255, 255, 255, 1);
  static const BoxShadow _kSwitchShadow = BoxShadow(
    blurRadius: 3,
    color: Color.fromRGBO(0, 0, 0, 0.2179),
    offset: Offset(0, 2),
  );

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.value;
  }

  @override
  void didUpdateWidget(DeviceListSlider oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.enabled != widget.enabled) {
      setState(() => _sliderValue = widget.enabled ? widget.value : 0);
    }
  }

  void _onChange(double pos, double width) {
    if (!widget.enabled) return;
    final newValue = pos.map(0, width, 0, 255).toInt().clamp(0, 255);
    widget.onChanged?.call(newValue);
    setState(() => _sliderValue = newValue);
  }

  Widget _buildTrack(BuildContext context) => SizedBox(
        width: _kTrackWidth,
        height: _kTrackHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: widget.enabled
                ? widget.color.withOpacity(0.1475)
                : context.theme.cardColor,
          ),
        ),
      );

  Widget _buildBar(BuildContext context, double width) => ClipPath(
        clipper: BoxClipper(width),
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: _kTrackWidth,
          height: _kTrackHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  _kSwitchColor.withOpacity(0.1),
                  _kSwitchColor.withOpacity(0.9),
                ],
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(_kTrackRadius),
              ),
            ),
          ),
        ),
      );

  Widget _buildThumb(BuildContext context, double position) => Positioned(
        left: position,
        child: SizedBox(
          width: _kSwitchWidth,
          height: _kSwitchHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_kTrackRadius),
              boxShadow: const [_kSwitchShadow],
              color: _kSwitchColor,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth - _kSwitchWidth;
          final position = _sliderValue.map(0, 255, 0, width);

          return GestureDetector(
            onTapDown: (d) =>
                _onChange(d.localPosition.dx, constraints.maxWidth),
            onPanUpdate: (d) =>
                _onChange(d.localPosition.dx, constraints.maxWidth),
            onPanDown: (d) =>
                _onChange(d.localPosition.dx, constraints.maxWidth),
            child: Stack(
              children: [
                _buildTrack(context),
                _buildBar(context, position),
                _buildThumb(context, position),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BoxClipper extends CustomClipper<Path> {
  final double clipX;
  BoxClipper(this.clipX);

  @override
  Path getClip(Size size) => Path()
    ..lineTo(0, size.height)
    ..lineTo(clipX + 12, size.height)
    ..lineTo(clipX + 12, 0)
    ..close();

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
