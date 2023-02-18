import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String username;

  Home(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/nimeshh.jpg',
              height: 350,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "My name is " + username,
            style: TextStyle(fontSize: 50),
          ),
          const Text(
            'I am a BIM student. I am tech geek, enthusiast, and leaner. I am passionate in Information Technology. I like to design, code and create content. I believe in power of tech communities.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
