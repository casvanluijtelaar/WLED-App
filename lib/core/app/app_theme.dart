import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppTheme {
  static const backgroundColor = Color(0xFF1D1D1D);
  static const cardColor = Color(0xFF303636);
  static const titleColor = Colors.white;
  static const _subTitleColor = Color(0xFF5E6766);

  static const _iconTheme = IconThemeData(
    color: titleColor,
    opacity: 1,
    size: 24,
  );

  static const _iconDisabledTheme = IconThemeData(
    color: titleColor,
    opacity: 1,
    size: 24,
  );

  static const _headerStyle = TextStyle(
    color: titleColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const _titleStyle = TextStyle(
    color: titleColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const _subTitleStyle = TextStyle(
    color: _subTitleColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const _bodyStyle = TextStyle(
    color: _subTitleColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const _buttonStyle = TextStyle(
    color: titleColor,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static final theme = ThemeData(
    fontFamily: 'Nunito',
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: _iconTheme,
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      centerTitle: false,
      elevation: 0,
      iconTheme: _iconTheme,
    ),
    backgroundColor: backgroundColor,
    bottomAppBarColor: backgroundColor,
    brightness: Brightness.dark,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: backgroundColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundColor,
      elevation: 0,
      selectedIconTheme: _iconTheme,
      unselectedIconTheme: _iconDisabledTheme,
      type: BottomNavigationBarType.fixed,
    ),
    cardTheme: const CardTheme(
      color: cardColor,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      elevation: 0,
    ),
    disabledColor: _subTitleColor,
    dividerColor: _subTitleColor,
    textTheme: const TextTheme(
      subtitle1: _subTitleStyle,
      subtitle2: _subTitleStyle,
      headline1: _headerStyle,
      headline2: _headerStyle,
      headline3: _headerStyle,
      headline4: _titleStyle,
      headline5: _titleStyle,
      headline6: _titleStyle,
      bodyText1: _bodyStyle,
      bodyText2: _bodyStyle,
      button: _buttonStyle,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: titleColor
    ),
  );
}
