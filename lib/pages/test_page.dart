// import 'package:flutter/material.dart';
// import 'package:flutter_sns_test/model/tflite_model.dart'; // 위에서 정의한 Classifier 클래스의 파일 경로에 따라 import 문을 수정하세요. // 위에서 정의한 Classifier 클래스의 파일 경로에 따라 import 문을 수정하세요.
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'TFLite Classifier',
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   Classifier _classifier = Classifier();
//   String? _name; // name 정보를 저장하기 위한 변수
//
//   @override
//   void initState() {
//     super.initState();
//     _loadTFLiteName(); // TFLite name 정보를 로드하는 함수 호출
//   }
//
//   Future<void> _loadTFLiteName() async {
//     String name = await _classifier.loadtflite();
//     setState(() {
//       _name = name; // 로드한 name 정보를 상태에 저장
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TFLite Classifier'),
//       ),
//       body: Center(
//         child: _name != null
//             ? Text(_name!) // name 정보를 출력
//             : CircularProgressIndicator(), // 로딩 중에는 로딩 인디케이터를 보여줍니다.
//       ),
//     );
//   }
// }
