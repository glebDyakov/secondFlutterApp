import "package:flutter/material.dart";

class HomePage extends StatefulWidget{
    @override
    _HomePageState createState => _HomePageState(); 
}
class _HomePageState extends State<HomePage>{
  final QuestionData data = QuestionData();
  final whilTextStyle = TextStyle(
    color:Colors.white,
    fontSize:24
  );
  int _countResult = 0;
  int _questionIndex = 0;
  List<Icon> _icons=[];
  void _clearState() => setState((){
    _questionIndex = 0;
    _countResult = 0;
    _icons=[]
  })
  void _onChangeAnswer(bool isCorrect) => setState((){
    if(isCorrect){
      _icons.add(Icon(Icons.brightness_1, color:Color(0xFFbd27ff)));
      _countResult++;

    }else{
      _icons.add(Icon(Icons.brightness_1, color:Color(0xFF000000)));
    }
    _questionIndex += 1;
  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Тестирование')
      ),
      body:SafeArea(
        DefaultTextStyle.merge(
        style:whiteTextStyle
        child:Container((

        constraints:BoxConstraints.expand(),
        decoration:BoxDecoration(
          color:const Color(0xff2a375a),
          image:DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit:BoxFit.cover
          )
        )
        child:Column(
          children:<Widget>[
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.question.length ? Quiz(
              index:_questionIndex,
              questionData:data,
              onChangeAnswer:_onChangeAnswer,
            )
            : Result(
              count:_countResult,
              total:data.questions.length,
              onClearState:_clearState
            ) 
            /*
            Quiz(
              index:_questionIndex,
              questionData:data,
              onChangeAnswer:_onChangeAnswer,
            )
            */
            

            ),
            /*
            Answer(),
            Answer(),
            Answer(),
            Answer(),
            */
            /*
            ...data.quesiotns[-_questionIndex].answers.map(
              (value) => Answer(
                title:value['answer'],
                onChangeAnswer:_onChangeAnswer,
                isCorrect:value.containsKey('isCorrect') ? true : false,
              )
            ).toList(),
            */
            /*
            RaisedButton(
              onPressed:() => setState(() => _questionIndex++),
              child:Text('дальше')
            )
            */
            /*
            Container(
              padding:const EdgeInsets.all(10.0),
              child:Text("Ответ 1!"),
            ),
            Container(
              padding:const EdgeInsets.all(10.0),
              child:Text("Ответ 2!"),
            ),
            Container(
              padding:const EdgeInsets.all(10.0),
              child:Text("Ответ 3!"),
            ),
            Container(
              padding:const EdgeInsets.all(10.0),
              child:Text("Ответ 4!"),
            ),
            */
          ]
          /*
          Container(
              
            child:Center(
              child:Text('Здесь что-то будет'),
            ),
          )
          */
          ,
        ))
      ),)
      )
    );
  }
}