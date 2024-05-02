import 'package:flutter/material.dart';
import 'package:tic_tac/homepage.dart';

void main() {
  runApp(const tic_tac());
}

class tic_tac extends StatelessWidget {
  const tic_tac({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          primaryColor:const Color(0xff00061a),
          shadowColor: const Color(0xff001456),
          splashColor: const Color(0xff4169e8)
        ),
        home: const HomePage(),
    );
  }
}