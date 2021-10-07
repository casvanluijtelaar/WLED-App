import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class DesktopFrame extends StatelessWidget {
  const DesktopFrame({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final buttonColors = WindowButtonColors(
      iconNormal: Colors.white,
      mouseOver: Colors.white,
      mouseDown: Colors.white,
      iconMouseOver: const Color(0xFF1D1D1D),
      iconMouseDown: const Color(0xFF1D1D1D),
    );

    final closeButtonColors = WindowButtonColors(
      mouseOver: const Color(0xFFD32F2F),
      mouseDown: const Color(0xFFB71C1C),
      iconNormal: Colors.white,
      iconMouseOver: Colors.white,
    );

    return Scaffold(
      body: WindowBorder(
        color: const Color(0xFF1D1D1D),
        width: 1,
        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xFF191919)),
              child: WindowTitleBarBox(
                child: Row(
                  children: [
                    Expanded(child: MoveWindow()),
                    MinimizeWindowButton(colors: buttonColors),
                    MaximizeWindowButton(
                      colors: buttonColors,
                      onPressed: appWindow.maximizeOrRestore,
                    ),
                    CloseWindowButton(colors: closeButtonColors),
                  ],
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}