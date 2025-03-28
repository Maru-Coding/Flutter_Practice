import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 앱의 시작점, 상태를 가질 수 없는 위젯
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp을 감싼 MyListWidget을 home 화면으로 설정
    return MaterialApp(home: MyListWidget());
  }
}

// 앱의 메인 화면, 상태 변경이 가능한 위젯
class MyListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyListWidgetState();
  }
}

// 메인 화면의 상태 관리 클래스
class _MyListWidgetState extends State<MyListWidget> {
  // 각 위젯이 유니크 키를 가지도록 설정
  List<Widget> widgetList = [
    MyColorItemWidget(Colors.red, key: UniqueKey()),
    MyColorItemWidget(Colors.blue, key: UniqueKey()),
  ];

  // 버튼을 누를 시 동작하는 함수
  onChange() {
    // 위젯의 키값 출력
    print(widgetList.elementAt(0).key);

    // 위젯의 위치 변경
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  // UI 빌드
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Key Test')),
      body: Column(
        children: [
          Row(children: widgetList), // Row 안에 WidgetList 배치
          ElevatedButton(onPressed: onChange, child: Text("toggle")),
        ],
      ),
    );
  }
}

// 상태를 가질 수 있는 컬러 박스 위젯
class MyColorItemWidget extends StatefulWidget {
  Color color;

  // 생성자로 색상을 받음
  MyColorItemWidget(this.color, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyColorItemWidgetState(color);
  }
}

class _MyColorItemWidgetState extends State<MyColorItemWidget> {
  Color color;

  _MyColorItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: color, width: 150, height: 150));
  }
}