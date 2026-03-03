import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatelessWidget {
  const BasketballPointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,

          backgroundColor: Colors.amber,

          title: Text(
            'Basketball Points Counter',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
