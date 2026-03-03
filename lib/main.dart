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
        body: Row(
          children: [
            Column(
              children: [
                Text(
                  'Team A',
                  style: TextStyle(
                    fontSize: 54,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 45),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 1 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 5 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 10 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  'Team B',
                  style: TextStyle(
                    fontSize: 54,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 45),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 1 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 5 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add 10 Points',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
