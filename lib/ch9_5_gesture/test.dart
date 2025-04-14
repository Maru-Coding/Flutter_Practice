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
          children: [
            // 사용자의 행위를 감지하는 GestureDetector
            GestureDetector(
              child: Image.asset('images/icon/user.png'),

              // 화면에 탭 할경우 onTap()
              onTap: () {
                print('image click!');
              },

              // 화면을 수직으로 드래그 할 경우 onVerticalDragStart()
              onVerticalDragStart: (DragStartDetails details) {
                print(
                  'vertical drag start... global position :'
                  '${details.globalPosition.dx}, '
                  '${details.globalPosition.dy}',
                );

                print(
                  'vertical drag start... local position : '
                  '${details.localPosition.dx}, '
                  '${details.localPosition.dy}',
                );
              },
            ),

            // 자체 이벤트 처리가 가능한 ElevatedButton
            // 이외에 IconButton, FloatingActionButton 등이 있다.
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton click!');
              },
              child: Text('Click Me'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
