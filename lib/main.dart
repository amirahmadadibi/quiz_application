import 'package:flutter/material.dart';
import 'package:quizz_like_application/home_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo[800],
          title: Text(
            'کیووز کویین',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: HomeWidget(),
      ),
    );
  }
}
