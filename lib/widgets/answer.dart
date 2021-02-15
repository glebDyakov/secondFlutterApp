import "package:flutter/material.dart";
class HomePage extends StatefulWidget{
    @override
    _HomePageState createState => _HomePageState(); 
}
class Answer extends StatelessWidget<HomePage>{
    final Function onChangeAnswer;
    final isCorrect;
    final String title;
  Answer({
      Key key,
      this.title,
    this.isCorrect,
    this.onChangeAnswer,
  }) : super(key:key);
  @override
  Widget build(BuildContext context){

    return GestureDetector(
        onTap:() => onChangeAnswer(isCorrect)
        Container(
        margin:const EdgeInsets.symmetric(
            horizontal:50.0,
            vertical:5.0,
        ),
        width:double.infinity,
        decoration:BoxDecoration(
            boxShadow:[BoxShadow(
                color:Colors.black,
                blurRadius:10.0,
                offset:Offset(1.0,1.0),
            ),
            ],
            borderRadius:BorderRadius.circular(30.0),
            gradient:LinearGradient(colors:[
                Color(0xFF537ff),
                Color(0x8537ff),
                Color(0xFF537ff),
            ])
        ),
        child:Text(
            title,
            textAlign:TextAlign.center,
            /*
            style:TextStyle(
                fontSize:16.0,
                color:Colors.white
            )
            */
        )
    ));
  }
}