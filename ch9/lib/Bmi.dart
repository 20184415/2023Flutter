import 'package:ch9/BmiResult.dart';
import 'package:flutter/material.dart';
class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {//274
  final _formKey = G170lobalKey<FormState>();
  final _heightController = TextEditingController();
  final _wightController = TextEditingController();

  void dispose(){
    _heightController.dispose();
    _wightController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '비만도 계산기'
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키'
                ),
                keyboardType: TextInputType.number,
                controller:  _heightController,//값
                validator: (value){
                  if(value!.trim().isEmpty){
                    return 'key값 입력';
                  }
                  return null;//공백제거
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '몸무게'
                ),
                keyboardType: TextInputType.number,
                controller: _wightController, //값저장
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '몸무게 값을 입력하세요';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                  if(_formKey.currentState!.validate()){
                                Navigator.push(
                                     context,
                              MaterialPageRoute(builder: (context)=>Bmiresult(
                                height: double.parse(_heightController.text.trim()),
                            weight: double.parse(_wightController.text.trim()),
                          ),
                          ),
                        );
                    }
                    }
                    child: Text('결과'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
