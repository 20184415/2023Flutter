import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
  Widget _buildMiddle(){
  final imageItems =[
    'assets/201904291390027161_3.jpg',
    'assets/cat-7094808_960_720.jpg',
    'assets/다운로드12.jpg'
  ];
  return CarouselSlider(
    options: CarouselOptions(
      height: 500.0,
    ),
    items: imageItems.map((path)
    {
      return Builder(
          builder: (BuildContext context){
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRect(
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                )
            )
            );
          }
      );
    }
  ).toList(),
  );
}

  Widget _buildBottom() {
    final items = List.generate(
        10, (i){
        return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('공지사항입니다.'),
    );
    });
    return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children:items
    );
    }

