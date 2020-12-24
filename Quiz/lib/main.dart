import 'package:flutter/material.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State <MyApp>{
  
  final _questions = const[
       {
      'questionText': 'what\'s your favorite color',
      'Answer': [{'text' : 'black' ,'score' : 10},
      {'text':'green' ,'score' : 9 },
      {'text':'white' ,'score': 2 }
      ]
      },
      {
       'questionText': 'what\'s your favorite animal',
      'Answer': [{'text' : 'cat' ,'score' : 5},
      {'text':'dog' ,'score' : 4 },
      {'text':'rabbit' ,'score': 2 }
      ] 
      }
      ];
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
   
    if(_inputquestion< _questions.length){
      print("we have more questions");
  }
  }
  @override 
  Widget build(BuildContext context){
    
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('First app'),
  ),
    body: _inputquestion < _questions.length ? quiz(answerquestions: _answerquestions,questions: _questions,inputquestion: _inputquestion)
     : result(_totalscore ,_resetQuiz) 

),
);


  }
}













