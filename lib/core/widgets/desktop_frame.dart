import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/widgets.dart';

class DesktopFrame extends StatelessWidget {
  const DesktopFrame({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final buttonColors = WindowButtonColors(
      iconNormal: const Color(0xFFFFFFFF),
      mouseOver: const Color(0xFFFFFFFF),
      mouseDown: const Color(0xFFFFFFFF),
      iconMouseOver: const Color(0xFFFFFFFF),
      iconMouseDown: const Color(0xFFFFFFFF),
    );

    return WindowBorder(
      color: const Color(0xFF1D1D1D),
      child: Column(
        children: [
          WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(child: MoveWindow()),
                MinimizeWindowButton(colors: buttonColors),
                MaximizeWindowButton(colors: buttonColors),
                CloseWindowButton(colors: buttonColors),
              ],
            ),
          ),
          child
        ],
      ),
    );
  }
}
