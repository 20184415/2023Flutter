import 'package:flutter/material.dart';
import 'StackTest.dart';
import 'ContainerTest.dart';
import 'PageViewUI.dart';
import 'TabBarTest.dart';
import 'Bottom.dart';
import 'Cen.dart';
import 'ButtonTest.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App', // 여기에 원하는 타이틀 문자열을 설정합니다.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ), //home:Cen(),
      home:ButtonTest(),

    );
  }
}

