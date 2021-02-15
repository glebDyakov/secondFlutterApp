import "package:flutter/material.dart";
void main() => runApp(MyApp());
class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
          title:Text('контейнер теория')
      ),
      body:
        /*
        Container(
            decoration:BoxDecoration(
              color:Colors.amber,
              shape:BoxShape.circle,
              border:Border.all(),
            ),
          alignment:Alignment.center,
          width:300,
          height:300,
          // margin:const EdgeInsets.all(0.0),
          // margin:const EdgeInsets.fromLTRB(100, 10, 10, 0),
          /*
          margin:const EdgeInsets.symmetric(
            horizontal: 200, vertical:200 
          ),
          */
          margin:const EdgeInsets.only(left:100),
          padding:const EdgeInsets.all(0.0),
          child: Text(
              'codeandart'
          )
      )
      */
      /*
      Container(
        width:double.infinity,
        height:200,
        alignment:Alignment.center,
        padding:const EdgeInsets.all(50),
        padding:const EdgeInsets.symetric(horizontal: 20),
        color:Colors.amber[300],
        child:Text('codeandart', textAlign:TextAlign.center,),

      )
      */
      Container(
        width:double.infinity,
        height:200,
        decoration:BoxDecoration(
          image:DecorationImage(
            image:Image.network(
              ''
            ).image,
            fit:BoxFit.cover,

          ),
          borderRadius:BorderRadius.circular(30)
        ),
      ),
    );
    
  }
}