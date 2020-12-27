import 'package:quiz_app_27d/Service/Question.dart';
import 'Option.dart';

class QuizManager{
  QuizManager() {
    _questions.add(
        Question('Input refers to when a computer takes in information.',
            [
              Option('True', 10),
              Option('False', 0),
            ]
        )
    );

    _questions.add(
        Question('Processing refers to when a computer sends out information',
            [
              Option('True', 0),
              Option('False', 10),
            ]
        )
    );

    _questions.add(
        Question('Storage refers to when information is saved in a computer.',
            [
              Option('True', 10),
              Option('False', 0),
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