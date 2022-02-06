import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

import 'package:wled/core/core.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key, this.size = 50}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: const RiveAnimation.asset(
        Kasset.loading,
        antialiasing: false,
      ),
    );
  }
}
