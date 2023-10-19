import 'package:flutter/material.dart';
class Cen extends StatefulWidget {
  const Cen({super.key});

  @override
  State<Cen> createState() => _CenState();
}

class _CenState extends State<Cen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended Test"),
        backgroundColor: Colors.deepPurple,

      ),
      body:Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          elevation: 10,
          child: Container(
          color: Colors.red,
            width: 100,
            height: 200,
        )
        ),
      )
    );

  }
}
