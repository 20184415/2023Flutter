import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldTest extends StatefulWidget {
  const TextFieldTest({super.key});

  @override
  State<TextFieldTest> createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(('TextFiled')),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
        children: [
        Text('input contents',
        style:TextStyle(
            fontSize: 40
          ),
        ),
        TextField(
        decoration: InputDecoration(
        labelText: '이름을 입력하세요'
          ),
        ),
      TextField(
    decoration: InputDecoration(
    labelText: '나이를입력하세요'
      ),
    ),
    ],
    ),
    );
  }
}
