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
        ),
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Test')),

        // 스크롤을 제공하는 SingleChildScrollView
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                child: Row(
                  children: <Widget>[
                    Container(color: Colors.red, width: 100),

                    // 비율로 배치하는 Empanded
                    Expanded(flex: 1, child: Container(color: Colors.amber)),
                    Expanded(flex: 1, child: Container(color: Colors.yellow)),
                  ],
                ),
              ),

              Container(
                color: Colors.green,
                height: 300,
                child: Row(
                  children: <Widget>[
                    Image.asset('images/lab_instagram_icon_1.jpg'),
                    Image.asset('images/lab_instagram_icon_2.jpg'),
                    Image.asset('images/lab_instagram_icon_3.jpg'),
                    Spacer(), // 빈 공간을 넣는 Spacer()
                    Image.asset('images/lab_instagram_icon_4.jpg'),
                  ],
                ),
              ),

              Container(color: Colors.blue, height: 300),
            ],
          ),
        ),
      ),
    );
  }
}
