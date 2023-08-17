import 'package:flutter/material.dart';
import 'package:nubank_ui_clone/src/screens/home/home_page.dart';
import 'package:nubank_ui_clone/src/themes/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "nubank ui clone",
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
