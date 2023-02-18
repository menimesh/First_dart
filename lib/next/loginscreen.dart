import 'package:flutter/material.dart';
import 'package:login_form/next/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

TextStyle myStyle = const TextStyle(fontSize: 25);

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final userField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "User name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final myLoginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          onPressed: () {
            if (username == "Nimesh" && password == "1234") {
              //  print("Login sucessful");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home(username)));
            } else {
              print("failed");
            }
          },
          child: Text('Login'),
        ));
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.supervised_user_circle,
                  size: 100,
                ),
                userField,
                SizedBox(height: 10),
                passwordField,
                SizedBox(
                  height: 10,
                ),
                myLoginButton,
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
