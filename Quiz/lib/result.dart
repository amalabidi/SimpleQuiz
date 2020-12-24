import 'package:flutter/material.dart';



class result extends StatelessWidget {
 final int resultScore;
 final Function resetHandler;
 result(this.resultScore, this.resetHandler);
String get resultPhase{
  String resultText= 'you did it !';
  if(resultScore >= 8){
    resultText= 'You crave new horizons and are usually ahead of the innovation curve. You don’t shy away from abstract solutions just because they don’t connect to an immediate goal. Paradigm shift!' ;
  }
  else if (resultScore >= 12){
    resultText= 'Everyday challenges don’t stand a chance against your Swiss Army-like arsenal of skills. You adapt anything and everything around you to ﬁnd a solution that moves the team forward. Go forth & conquer! ';
  }
  else {
    resultText= 'Your daring style speaks to your innate need to challenge the status quo. You’re not afraid to ask the tough questions and push those around you to think differently. Disrupt!' ;
  }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: [
        SizedBox(height:50),
        Text(resultPhase , 
        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color:Colors.black),
      textAlign: TextAlign.center
      
      ),
       SizedBox(height:100),
      Container(
        child:IconButton(
          icon: Icon(Icons.favorite,
      color: Colors.pink,
      size: 50.0,),
        )),
     SizedBox(height:100),
      Container(
         margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
       child: Center(
    
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          color: Colors.grey,
          onPressed: resetHandler,
          child: Text('restart quiz'
            ,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      )
       ))])
      );
   
    
  }
}