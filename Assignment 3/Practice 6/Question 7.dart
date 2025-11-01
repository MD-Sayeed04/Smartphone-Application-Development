import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print(' Welcome to the Quiz ');
    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('\nQuestion ${i + 1}: ${q.questionText}');
      for (int j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Your answer: ');
      int? ans = int.tryParse(stdin.readLineSync() ?? '');

      if (ans == q.correctAnswer) {
        print('Correct!');
        score++;
      } else {
        print('Wrong! Correct answer: ${q.options[q.correctAnswer - 1]}');
      }
    }

    print('\n Your final score: $score / ${questions.length}');
  }
}

void main() {
  List<Question> questions = [
    Question('What is the capital of Bangladesh?', ['Dhaka', 'Chittagong', 'Sylhet', 'Rajshahi'], 1),
    Question('Which language is used for Flutter development?', ['Java', 'Python', 'Dart', 'C++'], 3),
    Question('2 + 3 = ?', ['4', '5', '6', '7'], 2),
  ];

  Quiz quiz = Quiz(questions);
  quiz.start();
}
