import 'package:flutter/material.dart';
class AlertDlg extends StatefulWidget {
  const AlertDlg({super.key});

  @override
  State<AlertDlg> createState() => _AlertDigState();
}

class _AlertDigState extends State<AlertDlg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Test"),
        backgroundColor: Colors.purple,
      ),
      body: ElevatedButton(
        child: Text("show Dialog"),
        onPressed:(){
    showDialog(context: context,
    builder: (BuildContext context){
    return AlertDialog(
    title: Text("제목"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text('alert DiaLog 입니다.'),
            Text('OK를 눌러주세요')
          ],
        ),
      ),
      actions:<Widget> [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        },
                    child: Text('OK'),
        ),
        TextButton(onPressed: (){
      Navigator.of(context).pop();
      },
        child: Text('cancel'),
        ),
      ],

              );
            },
          );
        }
      )
    );
  }
}
