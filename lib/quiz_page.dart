import 'package:flutter/material.dart';
import 'package:quizz_like_application/constants/Constants.dart';
import 'package:quizz_like_application/data/Question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Qustion? selectedQuestion;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[shownQuestionIndex].imageNameNubmer!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'کوییز ها',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(4, (index) => getOptionsItem(index))
          ],
        ),
      ),
    );
  }

  Widget getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          print('correct');
        } else {
          print('wrong');
        }

        setState(() {
          if (shownQuestionIndex < getQuestionsList().length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
