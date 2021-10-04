import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    this.size = 32,
    this.onPressed,
    this.background = const Color.fromRGBO(0, 0, 0, 0.1544),
  }) : super(key: key);

  final double size;
  final VoidCallback? onPressed;
  final IconData icon;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(double.maxFinite),
      ),
      onTap: onPressed,
      child: SizedBox(
        height: size,
        width: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.all(Radius.circular(size / 2)),
          ),
          child: Icon(icon, size: 24),
        ),
      ),
    );
  }
}
