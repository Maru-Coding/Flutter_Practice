import 'package:flutter/material.dart';
import 'package:myproject/ch11_1_textfield/test.dart';

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

        body: TestScreen()
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  bool? isChecked = true; // 체크박스 상태 변수
  String? selectPlatform; // 라디오버튼 상태 변수
  double sliderValue = 5.0; // 슬라이더 상태 변수
  bool switchValue = true;  // 스위치 상태 변수

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('CheckBox Test'),
        Row(
          children: [
            // 체크박스
            Checkbox(
              // value 속성을 설정하여 체크 변경 시 이벤트 호출 콜백
              value: isChecked,
              onChanged: (bool? value){
                setState(() {
                  isChecked = value;
                });
              },
            ),

            Text('checkbox value is $isChecked')
          ],
        ),

        Text('Radio Test'),
        Row(
          children: [
            // 라디오 버튼
            // groupValue 속성이 똑같은 위젯 중 하나만 선택 가능
            Radio(
              // value 속성을 설정하여 체크 변경 시 이벤트 호출 콜백
              value: "android",
              groupValue: selectPlatform,
              onChanged: (String? value){
                setState(() {
                  selectPlatform = value;
                });
              }
            ),

            Text('android')
          ],
        ),

        Row(
          children: [
            // 라디오 버튼
            // groupValue 속성이 똑같은 위젯 중 하나만 선택 가능
            Radio(
              // value 속성을 설정하여 체크 변경 시 이벤트 호출 콜백
              value: "ios",
              groupValue: selectPlatform,
              onChanged: (String? value){
                setState(() {
                  selectPlatform = value;
                });
              }
            ),
            Text('ios')
          ],
        ),

        Text('select platform is $selectPlatform'),
        Text('Slider Test'),

        // 슬라이더
        // value 속성을 설정하여 체크 변경 시 이벤트 호출 콜백
        Slider(
          value: sliderValue,
          min: 0, // 슬라이더 최소값
          max: 10, // 슬라이더 최대값
          onChanged: (double value){
            setState(() {
              sliderValue = value;
            });
          }
        ),

        Text('slider value is $sliderValue'),
        Text('Switch Test'),

        // 스위치
        Switch(
          // value 속성을 설정하여 체크 변경 시 이벤트 호출 콜백
          value: switchValue,
          onChanged: (bool value){
            setState(() {
              switchValue = value;
            });
          },
        ),
        Text('select value is $switchValue')
      ],
    );
  }
}