import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkthemeModd = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        fontSize: 18,
        color: AppPallete.greyColor,
      ),
      contentPadding: const EdgeInsets.all(25),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient3),
    ),
  );
}
