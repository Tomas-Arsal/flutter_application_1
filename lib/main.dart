import 'package:flutter/material.dart';
// import 'screens/screen1.dart';
// import 'screens/screen2.dart';
// import 'screens/screen3.dart';
import 'screens/screen4.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
home: Screen4(),
    );
  }
}

