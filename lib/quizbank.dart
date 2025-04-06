import 'question.dart';

class Quizbank {
  int _questionNum = 0;

  final List<Question> _questionBank = [
    Question('Cross-Platform Programming on Thursday morning?', true),
    Question('Cross-platform Programming course includes 3 credits?', false),
    Question(
      'The lecturer of the Cross-Platform Programming course is Mr. Ngo Le Quan.',
      true,
    ),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', true),
    Question('Google was originally called "Backrub".', true),
    Question(
      'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.?',
      false,
    ),
  ];

  void nextQuestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNum].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNum].questionAnswer;
  }

  bool isFinished() {
    if (_questionNum >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    if (isFinished()) {
      _questionNum = 0;
    }
  }
}
