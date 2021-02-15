class Question {
    final String title;
    final List<Map> answers;
    Question({
        @required this.title,
        @required this.answers,
    }) 
}
classs QuestionData {
    final _data = [
        List<Question> get questions=> [..._data]; 
    ]
}