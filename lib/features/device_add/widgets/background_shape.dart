// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/rendering.dart';

class BackgroundShape extends CustomPainter {
  const BackgroundShape({
    required this.backgroundColor,
    this.borderRadius = 20,
    this.buttonSize = 54,
    this.buttonGap = 10,
  });

  final double borderRadius;
  final double buttonSize;
  final double buttonGap;

  final Color backgroundColor;

  @override
  void paint(Canvas canvas, Size size) {

    const topLeft = Offset.zero;
    final topRight = Offset(size.width, 0);
    final middleRight = Offset(size.width, size.height - buttonSize / 2 - buttonGap);
    final middle = Offset(size.width - buttonSize - buttonGap, middleRight.dy);
    final bottomMiddle = Offset(middle.dx, size.height);
    final bottomLeft = Offset(0, size.height);

    final shape = Path()
      ..moveTo(topLeft.dx + borderRadius, topLeft.dy)
      ..moveTo(topRight.dx - borderRadius, topRight.dy)
      ..conicTo(topRight.dx, topRight.dy, topRight.dx, topRight.dy + borderRadius, 1)
      ..moveTo(middleRight.dx, middle.dy - borderRadius)
      ..conicTo(middleRight.dx, middleRight.dy, middleRight.dx - borderRadius, middleRight.dy, 1)
      ..conicTo(middle.dx, middle.dy, bottomMiddle.dx, bottomMiddle.dy - borderRadius, 1)
      ..conicTo(bottomMiddle.dx, bottomMiddle.dy, bottomMiddle.dx - borderRadius, bottomMiddle.dy, 1)
      ..moveTo(bottomLeft.dx + borderRadius, bottomLeft.dy)
      ..conicTo(bottomLeft.dx, bottomLeft.dy, bottomLeft.dx, bottomLeft.dy - borderRadius, 1)
      ..moveTo(topLeft.dx, topLeft.dy + borderRadius)
      ..conicTo(topLeft.dx, topLeft.dy, topLeft.dx + borderRadius, topLeft.dy, 1);
  
    final paint = Paint()..color = backgroundColor..style = PaintingStyle.fill;
    canvas.drawPath(shape, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
