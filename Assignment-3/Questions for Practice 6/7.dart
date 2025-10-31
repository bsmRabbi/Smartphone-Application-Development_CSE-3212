import 'dart:io';

class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}

class Quiz {
  final List<Question> questions;
  int score = 0;

  Quiz({required this.questions});

  void start() {
    for (var question in questions) {
      print(question.questionText);
      for (var option in question.options) {
        print(option);
      }
      String? userAnswer = stdin.readLineSync();
      if (userAnswer != null) {
        int userSelectedIndex = int.tryParse(userAnswer) ?? -1;
        if (userSelectedIndex == question.correctOptionIndex) {
          score++;
          print("Correct!");
        } else {
          print("Incorrect!");
        }
      }
    }
    print("Quiz finished! \nYour score: $score/${questions.length}");
  }
}

void main() {
  List<Question> questions = [
    Question(
      questionText: "Which keyword is used to define a constant value in Dart?",
      options: ["0-final", "1-const", "2-static", "3-var"],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          "In Dart, which data type can hold both integer and double values?",
      options: ["0-bool", "1-int", "2-num", "3-double"],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          "What is the default value of an uninitialized variable in Dart?",
      options: ["0-null", "1-undefined", "2-0", "3-It depends on the type"],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          "Which of the following keywords is used to create a class in Dart?",
      options: ["0-struct", "1-object", "2-factory", "3-class"],
      correctOptionIndex: 3,
    ),
  ];

  Quiz quiz = Quiz(questions: questions);
  quiz.start();
}
