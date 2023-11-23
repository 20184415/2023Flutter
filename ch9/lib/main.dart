import 'package:ch9/BmiResult.dart';
import 'package:flutter/material.dart';
import 'MyCustomForm.dart';
import 'MyForm.dart';
import 'Bmi.dart';
import 'BmiResult.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BmiResult(height:1.0 , weight: 2.0),//Scaffold(
       // appBar: AppBar(
         // title: Text('폼 검증 Test'),
          //backgroundColor: Colors.purple,
       // ),
       // body: MyForm(

       // ),
      //),
      //MyForm(),
      // MyCustomForm(),
    );
  }
}