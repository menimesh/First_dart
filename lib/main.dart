import 'package:flutter/material.dart';
import 'package:login_form/next/loginscreen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login form",
      home: LoginScreen(),
    );
  }
}
