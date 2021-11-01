import 'package:flutter/material.dart';

  final ThemeData myTheme = ThemeData(
  primarySwatch: const MaterialColor(4288252857,{50: Color( 0xfff1eff5 )
    , 100: Color( 0xffe3dfec )
    , 200: Color( 0xffc7bfd9 )
    , 300: Color( 0xffaba0c5 )
    , 400: Color( 0xff8f80b2 )
    , 500: Color( 0xff73609f )
    , 600: Color( 0xff5c4d7f )
    , 700: Color( 0xff453a5f )
    , 800: Color( 0xff2e2640 )
    , 900: Color( 0xff171320 )
  }),
  primaryColor: Color( 0xff998bb9 ),
  primaryColorLight: Color( 0xffe3dfec ),
  primaryColorDark: Color( 0xff453a5f ),
  canvasColor: Color( 0xfffafafa ),
  scaffoldBackgroundColor: Color( 0xfffafafa ),
  bottomAppBarColor: Color( 0xffffffff ),
  cardColor: Color( 0xffffffff ),
  dividerColor: Color( 0x1f000000 ),
  highlightColor: Color( 0x66bcbcbc ),
  splashColor: Color( 0x66c8c8c8 ),
  selectedRowColor: Color( 0xfff5f5f5 ),
  unselectedWidgetColor: Color( 0x8a000000 ),
  disabledColor: Color( 0x61000000 ),
  toggleableActiveColor: Color( 0xff5c4d7f ),
  secondaryHeaderColor: Color( 0xfff1eff5 ),
  backgroundColor: Color( 0xffc7bfd9 ),
  dialogBackgroundColor: Color( 0xffffffff ),
  indicatorColor: Color( 0xff73609f ),
  hintColor: Color( 0x8a000000 ),
  errorColor: Color( 0xffd32f2f ),
  buttonTheme: ButtonThemeData(
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top:0,bottom:0,left:16, right:16),
    shape:     RoundedRectangleBorder(
      side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
    ,
    alignedDropdown: false ,
    buttonColor: Color( 0xffe0e0e0 ),
    disabledColor: Color( 0x61000000 ),
    highlightColor: Color( 0x29000000 ),
    splashColor: Color( 0x1f000000 ),
    focusColor: Color( 0x1f000000 ),
    hoverColor: Color( 0x0a000000 ),
    colorScheme: ColorScheme(
      primary: Color( 0xff998bb9 ),
      primaryVariant: Color( 0xff453a5f ),
      secondary: Color( 0xff73609f ),
      secondaryVariant: Color( 0xff453a5f ),
      surface: Color( 0xffffffff ),
      background: Color( 0xffc7bfd9 ),
      error: Color( 0xffd32f2f ),
      onPrimary: Color( 0xffffffff ),
      onSecondary: Color( 0xffffffff ),
      onSurface: Color( 0xff000000 ),
      onBackground: Color( 0xffffffff ),
      onError: Color( 0xffffffff ),
      brightness: Brightness.light,
    ),
  ),
  iconTheme: IconThemeData(
    color: Color( 0xdd000000 ),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: IconThemeData(
    color: Color( 0xffffffff ),
    opacity: 1,
    size: 24,
  ),
  dialogTheme: DialogTheme(
      shape:     RoundedRectangleBorder(
        side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      )

  ),
);
