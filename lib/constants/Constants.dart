import 'package:quizz_like_application/data/Question.dart';

List<Qustion> getQuestionsList() {
  var firstQuestion = Qustion();
  firstQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNameNubmer = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Qustion();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNubmer = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  return [firstQuestion, secondQuestion];
}
