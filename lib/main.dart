import 'package:animal_sorter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Person Recognizer',
      theme: _buildTheme(),
      home: HomePage(),
    );
  }

  _buildTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF212121),
      accentColor: Colors.deepPurple,
      primarySwatch: Colors.deepPurple,
    );
  }
}