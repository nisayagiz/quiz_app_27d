import 'package:quiz_app_27d/Service/Question.dart';
import 'Option.dart';

class QuizManager{
  QuizManager() {
    _questions.add(
      Question('Türkiye''nin başkenti neresidir?',
        [
          Option('Ankara', 10),
          Option('Roma', 0),
          Option('Beyrut', 0),
          Option('Bakü', 0),
        ]
      )
    );

    _questions.add(
        Question('Norveç''in başkenti neresidir?',
            [
              Option('Berlin', 0),
              Option('Oslo', 10),
              Option('Montenegro', 0),
              Option('Stocholm', 0),
            ]
        )
    );

    _questions.add(
        Question('İspanya''nın başkenti neresidir?',
            [
              Option('Liberia', 0),
              Option('Madrid', 10),
              Option('Comoros', 0),
              Option('Havana', 0),
            ]
        )
    );
    _questions.shuffle();
    for(var question in _questions){
      question.options.shuffle();
    }

  }
  List<Question> _questions=[];
  int _score=0;
  int currentQuestionID=0;
  void nextQuestion(score){
    if(currentQuestionID < _questions.length-1){
      _score += score;
      currentQuestionID++;
    }
  }

  bool isFinished() {
    return currentQuestionID >= _questions.length;
  }

  int getCurrentID() => currentQuestionID+1;
  int totalQuestionNumber() => _questions.length;
  int getTotalScore() => _score;

  Question getCurrentQuestion(){
    if(currentQuestionID < _questions.length) {
      return _questions[currentQuestionID];
    } else {
      return Question('', []);
    }
  }
}