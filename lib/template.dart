import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 바 푸른색으로 지정하기
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
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
