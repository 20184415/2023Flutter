import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom "),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.yellow,
      ),
        bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'home'
        ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'profile'
          ),BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'Notification'
          ),
        ],
      ),
    );
  }
}
