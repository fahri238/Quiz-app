import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/profile.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var _activeScreen = 'start-screen';

  void _switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'result-screen';
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'questions-screen';
    });
  }

  void _profileScreen() {
    setState(() {
      _activeScreen = 'profile-screen';
    });
  }

  void _backToHome() {
    setState(() {
      _activeScreen = 'start-screen';
    });
  }


  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(
      _switchScreen,
      onProfileTap: _profileScreen,
    );

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: _chooseAnswer);
    }

    if (_activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choosenAnswers: _selectedAnswers,
        onRestart: _restartQuiz,
      );
    }

    if (_activeScreen == 'profile-screen') {
      screenWidget = Profile(onBack: _backToHome);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
