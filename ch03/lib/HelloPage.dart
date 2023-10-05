import 'package:flutter/material.dart';
class HelloPage extends StatefulWidget{
  late String title;

  HelloPage({super.key, required String title}){
    this.title=title;
  }
  State<HelloPage> createState()=>_HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String message = 'Hello world';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hello world"),
        ),
        body: Text(
          message,
          style: TextStyle(fontSize: 50),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                message = "헬로월드";
              });
            }
        )
    );
  }

}