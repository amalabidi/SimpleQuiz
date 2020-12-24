import 'package:flutter/material.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
import 'fixture/fixture.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State <MyApp>{
  
 List<Map<String,Object>> questions=list;

  var _inputquestion=0;
  var _totalscore=0;
  void _resetQuiz(){
    setState(() {
       _inputquestion=0;
    _totalscore=0;
    });
   
  }
  void  _answerquestions(int score){
   
   _totalscore += score;
    setState((){
       _inputquestion = _inputquestion + 1;
      });
    print (_inputquestion);
   
    if(_inputquestion< questions.length){
      print("we have more questions");
  }
  }
  @override 
  Widget build(BuildContext context){
    
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.grey[500] ,
        title: Center(child:Text('Welcome To My Quiz !')),
  ),
    body:Container(color:Colors.grey[300], 
      
       child:
     _inputquestion < questions.length ? quiz(answerquestions: _answerquestions,questions: questions,inputquestion: _inputquestion)
     : result(_totalscore ,_resetQuiz) )

),
);


  }
}













