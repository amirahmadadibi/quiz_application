import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              image: AssetImage('images/1.png'),
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'مشهورترین شعبده‌باز دنیا کیست؟‌',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textAlign: TextAlign.end,
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
