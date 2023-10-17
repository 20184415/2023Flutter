import 'package:flutter/material.dart';
class ContainerTest extends StatefulWidget {
  const ContainerTest({super.key, required this.title});
  final String title;

  @override
  State<ContainerTest> createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Column(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10.0),
      ),
            ],
          ),

          );
  }
  }

