import 'package:flutter/material.dart';
class HelloPage extends StatefulWidget{
  late String title;

  HelloPage({super.key, required String title}){
    this.title=title;
  }
  State<HelloPage> createState()=>_HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
   String message="Hello World";
   String message1="hello";
   int count  = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "$count",
              style: TextStyle(fontSize: 50),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
               // message = "헬로월드";
              });
            }
        )
    );
  }
}
