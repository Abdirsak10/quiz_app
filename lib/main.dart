import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: quiz(),
  ));
}

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  List<String> questions = [
    ' flutter is best framewwork in mobile Application App',
    ' Abdirsak is not creatifed flutter mobile Application developer',
    '  flutter was released in 2017'
  ];
  List<bool> Answers=[
    true,
    false,
    true,

  ];
  int questionindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF081C15),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                questions[questionindex],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 22, letterSpacing: 2.0),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 22, right: 22),
                        height: 65,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                            final iscorrect=Answers[questionindex];
                              setState(() {
                                if(iscorrect==true){
                                  print("waa saax");
                                }
                                else{
                                  print("waa khalid");
                                }
                                questionindex++;
                              });
                            },
                            child: Text(
                              "True",
                              style: TextStyle(fontSize: 18),
                            ))))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        margin:
                            EdgeInsets.only(left: 22, right: 22, bottom: 16),
                        height: 65,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {

                              final isfalse=Answers[questionindex];
                              setState(() {
                                if(isfalse==false){
                                  print("waa khalad");
                                }
                                else{
                                  print("waa sax");
                                }
                                questionindex++;
                              });
                            },
                            child: Text("false",
                                style: TextStyle(
                                  fontSize: 22,
                                )))))
              ],
            ),
          )
        ],
      ),
    );
  }
}

  
  /*
  flutter is best framewwork in mobile Application App,true
  Abdirsak is not creatifed flutter mobile Application developer,false
  flutter was released in 2017,true





  */






















