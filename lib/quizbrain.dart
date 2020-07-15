import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(questionText: 'I like going to school.', questionAnswers:false),
    Question(questionText:'He is a good boy.', questionAnswers:true),
    Question(questionText:'I really know this boy from school.', questionAnswers:false),

  ];

  void nextQuestion(){
    if (_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswers;
  }
  bool isFinished(){
    if (_questionNumber>= _questionBank.length-1){
      print('Now returning true');
      return true;
    }else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}