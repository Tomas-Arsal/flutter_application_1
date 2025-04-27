import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profilePage.dart';
// import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/register.dart';
// import 'screens/screen1.dart';
// import 'screens/screen2.dart';
// import 'screens/screen3.dart';
// import 'screens/screen4.dart';
// import 'screens/screen5.dart';
  // import 'screens/screen6.dart';
// import 'package:flutter_application_1/pages/page1.dart';
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
home: Profile(),
    );
  }
}

