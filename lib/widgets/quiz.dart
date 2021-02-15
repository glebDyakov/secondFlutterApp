import "package:flutter/material.dart";
import "answer.dart";

class Quiz extends StatelessWidget{
    final index;
    final questionData;
    final onChangeAnswer;
  @override
  Widget build(BuildContext context){
    return Column(
        children:<Widget>[
            Container(
              padding:const EdgeInsets.all(10.0),
              child:Text(
                "Вопрос!"
                questionData.questions[index].title,
                /*
                style:Theme.of(context).textTheme.caption,
                 */
                ),
                ...questionData.quesiotns[index].answers.map(
              (value) => Answer(
                title:value['answer'],
                onChangeAnswer:_onChangeAnswer,
                isCorrect:value.containsKey('isCorrect') ? true : false,
              )
            ).toList(),
        ]
    );
  }
}