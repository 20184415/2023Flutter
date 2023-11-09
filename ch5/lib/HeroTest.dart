import 'package:flutter/material.dart';
class HeroTest extends StatefulWidget {
  const HeroTest({super.key});

  @override
  State<HeroTest> createState() => _HeroTestState();
}

class _HeroTestState extends State<HeroTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Test"),
        backgroundColor: Colors.purple,
      ),
      body: GestureDetector(
        onTap: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context){
    return HeroDetail();
    })
    );
    },
          child: Hero(
            tag: 'Image',
            child: Image.asset(
              'asset/다운로드.jpg.png'
            ),
          )
    ),
        }
      );

}
}

class HeroDetail extends StatelessWidget{

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
        backgroundColor: Colors.blue,
      ),
      body:Hero(
        tag: 'Image',
        child: Image.asset('asset/캡쳐'),
      ),
    );
  }
}