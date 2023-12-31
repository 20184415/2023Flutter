import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'Person.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String resultStr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage Test'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Text(resultStr),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text('다음 페이지로 이동'),
            onPressed: ()async {
              final person = new Person('홍길동', 25);
              final result = await Navigator.pushNamed(
                  context,
                  '/Second');
              setState(() {
              //  resultStr = result.name';
              });
            },
          ),
        ],
      ),
    );
  }
}
