import 'package:device_preview_plus/src/state/state.dart';
import 'package:flutter/material.dart';

extension ThemeBackgroundExtension on DevicePreviewBackgroundThemeData {
  /// Converts a [DevicePreviewBackgroundThemeData] to a [ThemeData].
  ThemeData asThemeData() {
    switch (this) {
      case DevicePreviewBackgroundThemeData.dark:
        return ThemeData.dark();
      case DevicePreviewBackgroundThemeData.light:
        return ThemeData.light();
    }
  }
}

extension ThemeToolbarExtension on DevicePreviewToolBarThemeData {
  /// Converts a [DevicePreviewToolBarThemeData] to a [ThemeData].
  ThemeData asThemeData() {
    switch (this) {
      case DevicePreviewToolBarThemeData.dark:
        final base = ThemeData.dark();
        const accentColor = Colors.white;
        return base.copyWith(
          colorScheme: const ColorScheme.dark(
            primary: accentColor,
            secondary: accentColor,
          ),
          primaryColor: accentColor,
          primaryColorDark: accentColor,
          highlightColor: accentColor.withValues(alpha: 0.1),
          sliderTheme: base.sliderTheme.copyWith(
            thumbColor: accentColor,
            activeTrackColor: accentColor.withValues(alpha: 0.7),
            inactiveTrackColor: accentColor.withValues(alpha: 0.12),
            activeTickMarkColor: accentColor,
            inactiveTickMarkColor: accentColor,
            overlayColor: accentColor.withValues(alpha: 0.12),
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          radioTheme: RadioThemeData(
            fillColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
            trackColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          tabBarTheme: base.tabBarTheme.copyWith(indicatorColor: accentColor),
        );
      case DevicePreviewToolBarThemeData.light:
        final base = ThemeData.light();
        const accentColor = Colors.black;
        const barColor = Color(0xFF303030);
        return base.copyWith(
          colorScheme: const ColorScheme.light(
            primary: accentColor,
            secondary: accentColor,
          ),
          primaryColor: accentColor,
          primaryColorDark: accentColor,
          highlightColor: accentColor,
          appBarTheme: base.appBarTheme.copyWith(color: barColor),
          sliderTheme: base.sliderTheme.copyWith(
            thumbColor: accentColor,
            activeTrackColor: accentColor.withValues(alpha: 0.7),
            inactiveTrackColor: accentColor.withValues(alpha: 0.12),
            activeTickMarkColor: accentColor,
            inactiveTickMarkColor: accentColor,
            overlayColor: accentColor.withValues(alpha: 0.12),
          ),
          checkboxTheme: CheckboxThemeData(
            fillColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          radioTheme: RadioThemeData(
            fillColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
            trackColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              if (states.contains(WidgetState.selected)) {
                return accentColor;
              }
              return null;
            }),
          ),
          tabBarTheme: base.tabBarTheme.copyWith(indicatorColor: accentColor),
        );
    }
  }
}
