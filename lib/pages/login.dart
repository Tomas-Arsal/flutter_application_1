import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/loginElement.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  LoginElement(
      Username: "Enter Username", Password: "Enter Password" , title: "Login",  
      );
  }
}