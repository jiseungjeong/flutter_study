import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        title: 'SnackBar',
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: TextButton(
                child: Text(
                  'Show me',
                  style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                  ),
                ),
                // color: Colors.red,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                onPressed: () {
                  // Scaffold.of(context).showSnackBar(SnackBar(
                  //   content: Text('Hellow'),
                  // ));
                  ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                    content: Text('Hellow'),
                  ));
                },
              ),
            );
          },
        ));
  }
}
