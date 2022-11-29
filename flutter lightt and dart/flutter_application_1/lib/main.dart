import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Navigation and Themes',
      home: HomePage(),
    );
  }
}
