
import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
        ],
    );
  }

  Widget _buildTop(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                print("클릭");
              },
              child: Column(
                children:[
                  Icon(
                  Icons.local_taxi),
                  Text("택시"),
                ]
              ),
            ),
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text("택시"),

                ]
            ),
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text('바이크'),

                ]
            ),
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text("택시"),

                ]
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text("택시"),
                ]
            ),
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text("택시"),

                ]
            ),
            Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text('바이크'),
                ]
            ),
            Opacity(
             opacity: 0.0,
            child : Column(
                children:[
                  Icon(
                      Icons.local_taxi),
                  Text("택시"),

                ]
            ),

        ),

      ],
    ),
    ],
    );
  }
            }
  Widget _buildMiddle(){return Text('Middle');}
  Widget _buildBottom() {return Text('Bottom');}

