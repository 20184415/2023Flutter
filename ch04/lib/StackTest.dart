import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  const StackTest({super.key});

  @override
  State<StackTest> createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview/ ListTile'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(crossAxisCount:4,
        children: [
          ElevatedButton(onPressed:, child: child,)
        ]adsads
      )
          );

  }
}
