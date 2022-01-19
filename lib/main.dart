import 'package:flutter/material.dart';
import 'package:storage_app/screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: const Color.fromRGBO(64, 69, 213, 1),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color.fromRGBO(239, 104, 143, 1),
        ),
      ),
      home: const TabScreen(),
    );
  }
}
