import 'package:flutter/material.dart';
import 'package:quiz_app_27d/Service/QuizManager.dart';
//Countries and Capitals

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizManager _manager = QuizManager();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Question ${_manager.getCurrentID()}/${_manager.totalQuestionNumber()}'
      ),),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '${_manager.getCurrentQuestion().text}',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: (){
                        _manager.nextQuestion(_manager.getCurrentQuestion().options[0].score);
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          '${_manager.getCurrentQuestion().options[0].text}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        _manager.nextQuestion(_manager.getCurrentQuestion().options[1].score);
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          '${_manager.getCurrentQuestion().options[1].text}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        _manager.nextQuestion(_manager.getCurrentQuestion().options[2].score);
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          '${_manager.getCurrentQuestion().options[2].text}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        _manager.nextQuestion(_manager.getCurrentQuestion().options[3].score);
                        setState(() {

                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          '${_manager.getCurrentQuestion().options[3].text}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )



          ],
        ),
      )
    );
  }
}

