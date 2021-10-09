import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:wled/core/core.dart';

/// creates a themed slider to select brightness between 0 and 255
class DeviceListSlider extends StatefulWidget {
  const DeviceListSlider({
    Key? key,
    this.value = 0,
    this.enabled = false,
    required this.color,
    this.onChanged,
  }) : super(key: key);

  final double value;
  final bool enabled;
  final Color color;
  final ValueChanged<int>? onChanged;

  @override
  _DeviceListSliderState createState() => _DeviceListSliderState();
}

class _DeviceListSliderState extends State<DeviceListSlider>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<int> _animation;

  static const double _kTrackWidth = double.maxFinite;
  static const double _kTrackHeight = 30;
  static const double _kTrackRadius = _kTrackHeight / 2.0;
  static const Color _kTrackColor = Color.fromRGBO(0, 0, 0, 0.1544);

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

    _controller = AnimationController(vsync: this, duration: Kduration.short);

    _animation = IntTween(begin: 0, end: 255).animate(_controller);
    _animation.addListener(() => setState(() {}));

    _controller.animateTo(widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// when the item updates, the brightness might have changed, so animate to
  /// to the new brightness position on rebuild
  @override
  void didUpdateWidget(DeviceListSlider oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.enabled != widget.enabled) {
      final value = widget.value.map(0, 255, 0, 1);
      _controller.animateTo(value);
    }
  }

  /// when the slider changes map the local gesture position firstly to between
  /// 0-255 and fire the callback. then map it to the animation range create an
  /// instant animation to that position
  void _onChange(double pos, double width) {
    final newValue = pos.map(0, width, 0, 255).clamp(0, 255);
    widget.onChanged?.call(newValue.toInt());
    final animationValue = pos.map(0, width, 0, 1).clamp(0, 1).toDouble();
    _controller.animateTo(animationValue, duration: Duration.zero);
  }

  /// background of the slider, changes to a slightly lighter version of  the
  /// devices color.
  Widget _buildTrack(BuildContext context) => SizedBox(
        width: _kTrackWidth,
        height: _kTrackHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: widget.enabled
                ? widget.color.withOpacity(0.1475)
                : _kTrackColor,
          ),
        ),
      );

  /// the background of the slider, has a gradient that fades to invisible based
  /// on the slider strength
  Widget _buildBar(BuildContext context, double pos) => ClipPath(
        clipper: BoxClipper(pos),
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

  /// the circular touchpoint for interacting with the slider
  Widget _buildThumb(BuildContext context, double pos) => Positioned(
        left: pos,
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
        builder: (context, cnstr) {
          final max = cnstr.maxWidth - _kSwitchWidth;
          final position = _animation.value.map(0, 255, 0, max);

          return GestureDetector(
            onTapDown: (d) => _onChange(d.localPosition.dx, cnstr.maxWidth),
            onPanUpdate: (d) => _onChange(d.localPosition.dx, cnstr.maxWidth),
            onPanDown: (d) => _onChange(d.localPosition.dx, cnstr.maxWidth),
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
