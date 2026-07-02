import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme({bool dark = false}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF5B4A8A),
    brightness: dark ? Brightness.dark : Brightness.light,
  );

  final base =
      dark
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true);

  // google_fonts downloads from network on first run; on macOS sandbox debug
  // builds this may fail — wrap in try/catch so app stays functional.
  TextTheme textTheme;
  try {
    textTheme = GoogleFonts.notoSansTextTheme(base.textTheme).apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );
  } catch (_) {
    textTheme = base.textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    );
  }

  return base.copyWith(
    colorScheme: colorScheme,
    textTheme: textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
    dividerTheme: const DividerThemeData(thickness: 0.5, space: 0.5),
  );
}
