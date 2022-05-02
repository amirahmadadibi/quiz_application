import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              'پاسخ های صییح شما',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}