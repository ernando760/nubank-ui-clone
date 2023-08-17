import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextStyle? get textLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get textMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get textSmall => Theme.of(this).textTheme.titleSmall;

  Color get primary => Theme.of(this).colorScheme.primary;
  Color get background => Theme.of(this).colorScheme.background;
  Color get primaryContainer => Theme.of(this).colorScheme.primaryContainer;

  Color opacityPrimaryContainer(double opacity) {
    return Theme.of(this).colorScheme.primaryContainer.withOpacity(opacity);
  }
}
