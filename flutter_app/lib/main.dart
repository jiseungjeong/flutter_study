import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        // make the text into the screen, not out of the screen.
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(40),
          child: Text('hello'),
        ),
      ),
    );
  }
}
