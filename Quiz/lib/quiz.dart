import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';



class quiz extends StatelessWidget {
  @override
  final Function answerquestions;
  final List<Map<String,Object>> questions;
  final int inputquestion;
  quiz({@required this.answerquestions,@required this.questions,@required this.inputquestion});
  Widget build(BuildContext context) {
    return Column( 
        children: [
          Question(questions[inputquestion
          ]['questionText']
          ),
           ...(questions[inputquestion]['Answer'] as List<Map<String , Object>>).map((answer){
             return Answer(() => answerquestions(answer['score']), answer['text']);
           }).toList()
    ] ,
  );
      
    
  }
}