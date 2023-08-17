import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_ui_clone/app_widget.dart';
import 'package:nubank_ui_clone/src/themes/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppTheme.themeLight.colorScheme.primary));
  runApp(const AppWidget());
}
