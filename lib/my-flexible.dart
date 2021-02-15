import "package:flutter/material.dart";
void main() => runApp(MyApp());
class MyFlex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Верстка теория'),
        ),
        body:Container(
            color:Colors.grey,
            child:Row(
                mainAxisSize:MainAxisSize.min,
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment:CrossAxisAlignment.center,
                children:<Widget>[
                    Container(
                        width:50,
                        color:Colors.red[400]
                        Text(
                            "Dart!",
                            style:TextStyle(
                                fontSize:30,
                                color:Color.black54
                            ),
                            softWrap:true,
                            overflow:TextOverflow.fade,
                            overflow:TextOverflow.visible,
                        ),
                    ),
                    Icon(
                        icon:Icons.favourite
                        size:25,
                    ),
                    BiggerColorBox(),
                    
                    Flexible(
                        fit: FlexFit.loose,    
                        flex:1,
                        child:ColorBox()
                    ),
                    Spacer(flex:1),
                    Flexible(
                        fit: FlexFit.loose,    
                        flex:1,
                        child:ColorBox()
                    ),
                    Expanded(
                        fit: FlexFit.loose,    
                        flex:1,
                        child:ColorBox()
                    ),
                    SizedBox(
                        width:100,
                        height:100,
                    )

                ]
            )
        )
    );
  }
}
class ColorBox extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            width:80,
            height:80,
            decoration:BoxDecoration(
                color:Colors.redAccent[400],
                border:Border.all(),

            ),
            child:Text('123')
        );
    }
}

class BiggerColorBox extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Container(
            width:350,
            height:80,
            decoration:BoxDecoration(
                color:Colors.green[500],
                border:Border.all(),

            ),
        );
    }
}
