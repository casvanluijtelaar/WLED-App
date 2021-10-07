import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wled/core/core.dart';

abstract class AppTheme {
  static const _backgroundColor = Color(0xFF1D1D1D);
  static const _cardColor = Color(0xFF303636);
  static const _titleColor = Colors.white;
  static const _subTitleColor = Color(0xFF5E6766);

  static const _iconTheme = IconThemeData(
    color: _titleColor,
    opacity: 1,
    size: 32,
  );

  static const _iconDisabledTheme = IconThemeData(
    color: _titleColor,
    opacity: 1,
    size: 24,
  );

  static const _headerStyle = TextStyle(
    color: _titleColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const _titleStyle = TextStyle(
    color: _titleColor,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    shadows: [
      Shadow(
        offset: Offset(0, 1),
        color: Color.fromRGBO(0, 0, 0, 0.1),
      ),
    ],
    overflow: TextOverflow.fade,
  );

  static const _titleSmallStyle = TextStyle(
    color: _titleColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const _subTitleStyle = TextStyle(
    color: _titleColor,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    shadows: [
      Shadow(
        offset: Offset(0, 1),
        color: Color.fromRGBO(0, 0, 0, 0.1),
      ),
    ],
    overflow: TextOverflow.fade,
  );

  static const _bodyStyle = TextStyle(
    color: _subTitleColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const _hintStyle = TextStyle(
    color: _subTitleColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const _buttonStyle = TextStyle(
    color: _titleColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final theme = ThemeData(
    fontFamily: 'Nunito',
    scaffoldBackgroundColor: _backgroundColor,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: _iconTheme,
      backgroundColor: _backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: _backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: _backgroundColor,
        systemNavigationBarDividerColor: _backgroundColor,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
      ),
      centerTitle: false,
      elevation: 0,
      iconTheme: _iconTheme,
    ),
    backgroundColor: _backgroundColor,
    bottomAppBarColor: _backgroundColor,
    brightness: Brightness.dark,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: _backgroundColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: _backgroundColor,
      elevation: 0,
      selectedIconTheme: _iconTheme,
      unselectedIconTheme: _iconDisabledTheme,
      type: BottomNavigationBarType.fixed,
    ),
    cardTheme: const CardTheme(
      color: _cardColor,
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
      headline6: _titleSmallStyle,
      bodyText1: _bodyStyle,
      bodyText2: _bodyStyle,
      button: _buttonStyle,
    ),
    colorScheme: const ColorScheme.dark(
      primary: _titleColor,
      secondary: Colors.grey,
      background: _backgroundColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: _titleColor,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      modalBackgroundColor: _backgroundColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(Consts.paddingSmall),
      alignLabelWithHint: true,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Color(0xFFC62828)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: _cardColor),
      ),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: _cardColor),
      ),
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: _cardColor),
      ),
      fillColor: _cardColor,
      filled: true,
      hintStyle: _hintStyle,
      focusColor: _backgroundColor,
    ),
  );
}
