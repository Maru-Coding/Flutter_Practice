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

        body: TestScreen()
      ),
    );
  }
}

// 상태를 가지는 클래스 선언
class TestScreen extends StatefulWidget {
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {
  // 텍스트 데이터를 얻기 위한 TextEditingController
  // 텍스트 필드에 입력된 데이터와 이벤트 등을 감지하는 작업 수행
  final controller = TextEditingController();
  int textCounter = 0; // 글자 수

  // _printValue() 함수를 아래 initState() 이벤트에 등록
  _printValue() {
    print("_printValue() : ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  // 텍스트 입력을 감지하는 이벤트
  void initState(){
    super.initState();
    controller.addListener(_printValue);
  }

  // 텍스트 입력이 없을 때 메모리 해제
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build...");

    return Column(
      children: [
        Text('TextField Test'),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller, // 텍스트 필드에 컨트롤러 지정

          // 텍스트 필드 꾸미기
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: "Hint Text",
            helperText: "데이터를 입력하세요.",
            counterText: "$textCounter characters",
          ),

          textInputAction: TextInputAction.search, // 검색 버튼
          keyboardType: TextInputType.emailAddress, // 키보드 유형 (이메일)
          minLines: 5,  // 최소 줄 수
          maxLines: 5,  // 최대 줄 수
        ),
      ],
    );
  }
}