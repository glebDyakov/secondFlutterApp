import "package:flutter/material.dart";

class Result extends StatelessWidget{

    @override
    Widget build(BuildContext context){
        String msg='';
        if(0 <= count && count <=3){
            msg="";
            Image.asset('assets/');
        }else if(4 <= count && count <=7){
            msg="";
            Image.asset('assets/');
        }else{
            msg="";
            Image.asset('assets/');
        }
        return Container(
            padding:const EdgeInsets.all(20.0),
            margin:const EdgeInsets.symmetric(horizontal: 30.0),
            decoration:BoxDecoration(
                [
                    BoxShadow(
                        color:Colors.black,
                        blurRadius:15.0,
                        spreadRadius: 0.0,
                        offsetOffset(2.0, 2.0),
                    )   
                ],
                borderRadius:BorderRadius.circular(30.0),
                gradient:LinearGradient(
                    colors:<Colors>[
                        Color(0xFF5337ff),
                        Color(0xFF8131ff),
                        Color(0xFFbd27ff),
                    ],
                ),
            ),
            child:Column(
                width:120,
                height:120,
                child:FittedBox(
                    fit:BoxFit.contain,
                    child:img,
                ),



            ),
            Container(
                child:Text(
                    msg,
                    textAlign: TextAlign.center,
                ),
            ),
            Divider(
                color:Colors.white
            ),
            Text(
                'Верно ответил на $count из $total',

            ),
            Divider(
                color:Colors.white
            ),
            FlatButton(child:Text(
                style:TextStyle(
                    fontSize:22.0
                ),
                'пройти ещё раз'
            ),
            onPressed:onClearState
            )
        );
    }
     
}
