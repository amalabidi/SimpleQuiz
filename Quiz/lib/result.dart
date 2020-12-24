import 'package:flutter/material.dart';



class result extends StatelessWidget {
 final int resultScore;
 final Function resetHandler;
 result(this.resultScore, this.resetHandler);
String get resultPhase{
  String resultText= 'you did it !';
  if(resultScore <= 8){
    resultText= 'you are awesome and innocent' ;
  }
  else if (resultScore <= 12){
    resultText= 'hmm ! you are beautiful ! ';
  }
  else {
    resultText= 'hmm ! you should rethink about your choices' ;
  }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: [
        SizedBox(height:30),
        Text(resultPhase , 
        style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold,color:Colors.pink[600]),
      textAlign: TextAlign.center
      
      ),
      Container(child:Text( 'you got :' + resultScore.toString(),style:TextStyle(fontSize: 15) )),
      Center(
        child:
      FlatButton(onPressed: resetHandler, child: 
      Text('restart quiz!'),
      textColor: Colors.amber)
      )
      ]
      )
    );  
    
  }
}