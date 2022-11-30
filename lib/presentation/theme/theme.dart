// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const defaultPadding = 20.0;
const defaultAppBarHeight = 56.0;
const defaultSpacer = SizedBox(
  height: defaultPadding,
);
const defaultSpacerSmall = SizedBox(
  height: defaultPadding / 2,
);
const defaultSpacerHorizontal = SizedBox(width: defaultPadding);
const defaultSpacerHorizontalSmall = SizedBox(
  width: defaultPadding / 2,
);

const defaultAnimationDuration = Duration(milliseconds: 500);

const dividerColor = Color(0XFFC4C4C4);
const bgLightBlue = Color(0xFFF2F6F9);

const whiteColor = Colors.white;
const redColor = Color.fromARGB(211, 194, 18, 6);
const greyColor = Color.fromARGB(255, 215, 214, 214);
const primaryColor = Color(0XFF00438b);
const secondaryColor = Color(0XFFef2c1e);
const blackColor = Colors.black;

const defaultShadow = [
  BoxShadow(color: Colors.black26, offset: Offset(1.1, 1.1), blurRadius: 5)
];

setSystemOverlay() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    //  DeviceOrientation.portraitDown
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
    // systemNavigationBarColor: Colors.white,
    // systemNavigationBarDividerColor: Colors.grey,
    // systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

ThemeData themeData(context) {
  return ThemeData.light().copyWith(
      // androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
      // platform: TargetPlatform.android,

      iconTheme: const IconThemeData(color: secondaryColor),
      tabBarTheme: TabBarTheme(
          labelStyle: Theme.of(context).textTheme.headline6,
          labelColor: blackColor,
          indicator: const UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: defaultPadding * 3),
              borderSide: BorderSide(color: primaryColor))),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: primaryColor),
      inputDecorationTheme: InputDecorationTheme(
          iconColor: primaryColor,
          labelStyle: const TextStyle(color: greyColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultPadding / 2),
              borderSide: const BorderSide(color: primaryColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultPadding / 2))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          // selectedIconTheme: IconThemeData(color: whiteColor),
          backgroundColor: primaryColor,
          showUnselectedLabels: true,
          selectedItemColor: whiteColor,
          unselectedItemColor: Colors.white70,
          selectedLabelStyle: TextStyle(color: whiteColor)),
      textTheme: GoogleFonts.poppinsTextTheme(),
      chipTheme: Theme.of(context).chipTheme.copyWith(
          secondaryLabelStyle: const TextStyle(color: whiteColor),
          secondarySelectedColor: primaryColor),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: redColor,
          elevation: 0,
          iconTheme: IconThemeData(color: whiteColor)),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white));
}

extension ThemeExtension on TextTheme {
  TextStyle headline6BoldWhite() =>
      headline6!.copyWith(fontWeight: FontWeight.bold, color: whiteColor);
  TextStyle headline6BoldPrimary() =>
      headline6!.copyWith(fontWeight: FontWeight.bold, color: primaryColor);

  TextStyle headline6NormalPrimary() =>
      headline6!.copyWith(fontWeight: FontWeight.normal, color: primaryColor);
  TextStyle headline3BoldWhite() =>
      headline3!.copyWith(fontWeight: FontWeight.bold, color: whiteColor);

  TextStyle headline4BoldPink() =>
      headline3!.copyWith(fontWeight: FontWeight.bold, color: primaryColor);
}
