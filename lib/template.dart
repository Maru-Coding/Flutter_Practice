import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 바
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            elevation: 0,
            shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
          )
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Test')),

        body: Column(

        ),
      ),
    );
  }
}