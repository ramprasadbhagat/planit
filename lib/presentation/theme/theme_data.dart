import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planit/presentation/theme/colors.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData.light().copyWith(
    //Colors
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primary,
    canvasColor: AppColors.extraLightGray,
    colorScheme: _colorScheme(),

    //Layout
    appBarTheme: _appBarTheme(),
    tabBarTheme: _tabBarTheme(),
    iconTheme: _iconTheme(),
    bottomAppBarTheme: _bottomAppBarTheme(),
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),
    navigationRailTheme: _navigationRailTheme(),
    dialogTheme: _dialogTheme(),
    bottomSheetTheme: _bottomSheetTheme(),
    drawerTheme: _drawerTheme(),

    //Text
    textTheme: _textTheme(),
    primaryTextTheme: _textTheme(),
    textSelectionTheme: _textSelectionTheme(),
    inputDecorationTheme: _inputDecorationTheme(),

    //Buttons
    floatingActionButtonTheme: _floatingActionButtonTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
    textButtonTheme: _textButtonTheme(),
    outlinedButtonTheme: _outlinedButtonTheme(),

    //Controls and UI Elements
    checkboxTheme: _checkboxTheme(),
    radioTheme: _radioTheme(),
    progressIndicatorTheme: _progressIndicatorTheme(),
    snackBarTheme: _snackBarTheme(),
    cardTheme: _cardTheme(),
    dividerTheme: _dividerTheme(),
    chipTheme: _chipTheme(),
    listTileTheme: _listTileTheme(),
  ),
  AppTheme.dark: ThemeData.dark().copyWith(),
};

ColorScheme _colorScheme() {
  return const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    background: AppColors.white,
    secondary: AppColors.secondary,
    onPrimary: AppColors.black,
    error: AppColors.error,
  );
}

//============================================================
//  LAYOUT
//============================================================

AppBarTheme _appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    color: AppColors.white,
    titleTextStyle: GoogleFonts.notoSans(
      fontSize: 18,
      color: AppColors.black,
    ),
    elevation: 5,
    shadowColor: AppColors.boxShadowColor,
  );
}

TabBarTheme _tabBarTheme() {
  return const TabBarTheme(
    labelColor: AppColors.primary,
    unselectedLabelColor: AppColors.unselectedLabelColor,
    indicatorColor: AppColors.primary,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 2.0,
      ),
    ),
  );
}

IconThemeData _iconTheme() {
  return const IconThemeData(
    color: AppColors.primary,
  );
}

BottomAppBarTheme _bottomAppBarTheme() {
  return const BottomAppBarTheme(
    color: AppColors.white,
    elevation: 2,
  );
}

BottomNavigationBarThemeData _bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.unselectedLabelColor,
    type: BottomNavigationBarType.fixed,
    elevation: 2,
    backgroundColor: AppColors.white,
  );
}

DialogTheme _dialogTheme() {
  return DialogTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    backgroundColor: AppColors.white,
    elevation: 2,
  );
}

BottomSheetThemeData _bottomSheetTheme() {
  return BottomSheetThemeData(
    backgroundColor: AppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}

DrawerThemeData _drawerTheme() {
  return const DrawerThemeData(
    backgroundColor: AppColors.white,
  );
}

NavigationRailThemeData _navigationRailTheme() {
  return NavigationRailThemeData(
    elevation: 2,
    backgroundColor: AppColors.white,
    indicatorColor: AppColors.primary,
    // useIndicator: true,
    labelType: NavigationRailLabelType.all,
    selectedLabelTextStyle: GoogleFonts.notoSans(
      fontSize: 18,
      color: AppColors.primary,
    ),
    unselectedLabelTextStyle: GoogleFonts.notoSans(
      fontSize: 18,
      color: AppColors.unselectedLabelColor,
    ),
    selectedIconTheme: const IconThemeData(color: AppColors.primary),
    unselectedIconTheme:
        const IconThemeData(color: AppColors.unselectedLabelColor),
  );
}
//============================================================
//  TEXT
//============================================================

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
        titleLarge: GoogleFonts.notoSans(
          fontSize: 18,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
        titleMedium: GoogleFonts.notoSans(
          fontSize: 16,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
        titleSmall: GoogleFonts.notoSans(
          fontSize: 14,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
        labelLarge: GoogleFonts.notoSans(
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.25,
        ),
        labelMedium: GoogleFonts.notoSans(
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.25,
        ),
        labelSmall: GoogleFonts.notoSans(
          fontSize: 14,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.25,
        ),
        bodyLarge: GoogleFonts.notoSans(
          fontSize: 14,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
        bodyMedium: GoogleFonts.notoSans(
          fontSize: 13,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
        bodySmall: GoogleFonts.notoSans(
          fontSize: 12,
          color: AppColors.black,
          letterSpacing: 0.25,
        ),
      );
}

TextSelectionThemeData _textSelectionTheme() {
  return const TextSelectionThemeData(
    cursorColor: AppColors.primary,
    selectionColor: AppColors.gradient,
    selectionHandleColor: AppColors.primary,
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    labelStyle: GoogleFonts.notoSans(
      fontSize: 14.0,
    ),
    hintStyle: GoogleFonts.notoSans(
      fontSize: 16,
      color: AppColors.neutralsGrey,
      letterSpacing: 0.25,
    ),
    floatingLabelStyle: const TextStyle(
      color: AppColors.primary,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.inputBorderColor,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.inputBorderColor,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.inputBorderColor,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.red,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.red,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    iconColor: AppColors.primary,
    focusColor: AppColors.primary,
    hoverColor: AppColors.primary,
    prefixIconColor: AppColors.primary,
    suffixIconColor: AppColors.primary,
    filled: true,
    fillColor: AppColors.white,
  );
}

//============================================================
//  BUTTONS
//============================================================

FloatingActionButtonThemeData _floatingActionButtonTheme() {
  return const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: AppColors.orange,
    foregroundColor: AppColors.white,
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.notoSans(
        fontSize: 15,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      elevation: 0,
      disabledBackgroundColor: AppColors.lightPrimary,
      minimumSize: const Size(120, 45),
    ),
  );
}

TextButtonThemeData _textButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: GoogleFonts.notoSans(
        fontSize: 14,
        color: AppColors.textButtonColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.white,
      side: const BorderSide(color: AppColors.primary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.notoSans(
        fontSize: 15,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.25,
      ),
      elevation: 0,
      minimumSize: const Size(120, 45),
    ),
  );
}

//============================================================
//  CONTROLS AND UI ELEMENTS
//============================================================

CheckboxThemeData _checkboxTheme() {
  return CheckboxThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    checkColor: MaterialStateProperty.all(
      AppColors.white,
    ),
    fillColor: MaterialStateColor.resolveWith(
      (states) => states.contains(MaterialState.selected)
          ? AppColors.primary
          : AppColors.darkGray,
    ),
    visualDensity: VisualDensity.compact,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        3.0,
      ),
    ),
  );
}

RadioThemeData _radioTheme() {
  return RadioThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor: MaterialStateProperty.all(
      AppColors.primary,
    ),
  );
}

ProgressIndicatorThemeData _progressIndicatorTheme() {
  return const ProgressIndicatorThemeData(
    color: AppColors.primary,
  );
}

SnackBarThemeData _snackBarTheme() {
  return const SnackBarThemeData(
    backgroundColor: AppColors.primary,
    contentTextStyle: TextStyle(
      fontWeight: FontWeight.w600,
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          8.0,
        ),
      ),
    ),
  );
}

CardTheme _cardTheme() {
  return const CardTheme(
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          8.0,
        ),
      ),
    ),
  );
}

DividerThemeData _dividerTheme() {
  return const DividerThemeData(
    space: 0,
    indent: 24,
    endIndent: 24,
    thickness: 1.5,
    color: AppColors.dividerColor,
  );
}

ChipThemeData _chipTheme() {
  return const ChipThemeData(
    backgroundColor: AppColors.secondaryEmerald10,
    labelPadding: EdgeInsets.symmetric(horizontal: 10),
    labelStyle: TextStyle(fontSize: 14, letterSpacing: 0.25, height: 1.1),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.zero,
  );
}

ListTileThemeData _listTileTheme() {
  return const ListTileThemeData(
    iconColor: AppColors.primary,
    textColor: AppColors.primary,
  );
}