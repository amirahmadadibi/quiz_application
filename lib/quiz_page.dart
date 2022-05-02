import 'package:flutter/material.dart';
import 'package:quizz_like_application/constants/Constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  var list = [
    ListTile(
        title: Text(
      'پاسخ اول',
      textAlign: TextAlign.end,
    )),
    ListTile(
      title: Text(
        'پاسخ دوم',
        textAlign: TextAlign.end,
      ),
    ),
    ListTile(
      title: Text(
        'پاسخ سوم',
        textAlign: TextAlign.end,
      ),
    ),
    ListTile(
      title: Text(
        'پاسخ چهارم',
        textAlign: TextAlign.end,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
              getQuestionsList()[shownQuestionIndex].questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(
              4,
              (index) => ListTile(
                title: Text(
                  getQuestionsList()[shownQuestionIndex].answerList![index],
                  textAlign: TextAlign.end,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
