import 'package:flutter/widgets.dart';

abstract class Kpadding {
  static const large = 32.0;
  static const medium = 20.0;
  static const small = 8.0;
  static const extraSmall = 4.0;
}

abstract class Kduration {
  static const large = Duration(milliseconds: 800);
  static const medium = Duration(milliseconds: 400);
  static const short = Duration(milliseconds: 200);
}

abstract class Kspacer {
  static const small = SizedBox(height: 4);
  static const medium = SizedBox(height: 8);
  static const large = SizedBox(height: 16);
}

abstract class Kasset {
   static const loading = 'assets/rive/loading.riv';
   static const devicesBox = 'devices';
}

