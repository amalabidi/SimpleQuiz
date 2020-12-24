import 'package:flutter/material.dart' ;

class Answer extends StatelessWidget {
  final Function selectHandler ;
  final String answerText ;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          color: Colors.grey,
          onPressed: selectHandler,
          child: Text(answerText
            ,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
    
      
    ));
  }
}
