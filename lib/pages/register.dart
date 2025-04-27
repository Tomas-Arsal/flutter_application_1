import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/loginElement.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  LoginElement(
      Username: "Enter Username", Password: "Enter Password",  ConfirmPassword: "Confirm Password" , title: "Register",
      );
  }
}