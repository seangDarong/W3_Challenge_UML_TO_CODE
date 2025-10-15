class Question {
  String title;
  List<String> choice = [];
  String goodChoice;

  Question(this.title, this.choice, this.goodChoice);
}

class Answer {
  String answerChoice;
  Question question;

  Answer(this.answerChoice, this.question);

  bool isGoodAnswer() {
    return answerChoice == question.goodChoice;
  }
}

class Quiz {
  List<Question> questions = [];
  List<Answer> answers = [];

  Quiz(this.questions, this.answers);

  void addAnswer(Answer answer) {
    answers.add(answer);
  }

  int getScore() {
    int score = 0;
    for (int i = 0; i < answers.length; i++) {
      if (answers[i].isGoodAnswer()) {
        score++;
      }
    }
    return score;
  }
}
