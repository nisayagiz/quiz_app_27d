import 'package:flutter/material.dart';
import 'package:quiz_app_27d/Screens/QuizPage.dart';
import 'package:quiz_app_27d/Screens/TrueFalsePage.dart';


void gotoQuizPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => QuizPage()),
    );
}

void gotoTrueFalsePage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => TrueFalsePage(),
  )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kendini test et')),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lütfen bir test seçin!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40,),
            RaisedButton(
              color: Colors.white70,
              onPressed: (){gotoQuizPage(context);},
              child: Text('Ülkeler ve Başkentler'),
            ),
            SizedBox(height: 10),
            RaisedButton(
              color: Colors.white70,
              onPressed: (){gotoTrueFalsePage(context);},
              child: Text('Computer Functions'),
            )

          ],
        ),
      ),
    );
  }
}

