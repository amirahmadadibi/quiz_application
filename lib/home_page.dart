import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/1.png'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.indigo[700], minimumSize: Size(200.0, 40.0)),
            onPressed: () {},
            child: Text(
              'شروع بازی',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
