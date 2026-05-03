import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
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
          body: BlocConsumer(
            listener: (context, state) {
              if (state is CounterTeamAStates) {
                TeamAPoints = BlocProvider.of<CounterCubit>(context).TeamA;
              } else if (state is CounterTeamBStates) {
                TeamBPoints = BlocProvider.of<CounterCubit>(context).TeamB;
              }
            },
            builder: (context, state) => Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 500,
                        child: Column(
                          children: [
                            Text(
                              "Team A",
                              style: TextStyle(
                                fontSize: 54,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${BlocProvider.of<CounterCubit>(context).TeamA}",
                              style: TextStyle(
                                fontSize: 44,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 45),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamAPoints++;
                                });
                              },
                              child: Text(
                                'Add 1 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamAPoints += 5;
                                });
                              },
                              child: Text(
                                'Add 5 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamAPoints += 10;
                                });
                              },
                              child: Text(
                                'Add 10 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 400,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
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
                              "$TeamBPoints",
                              style: TextStyle(
                                fontSize: 44,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 45),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBPoints++;
                                });
                              },
                              child: Text(
                                'Add 1 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBPoints += 5;
                                });
                              },
                              child: Text(
                                'Add 5 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(12),
                                backgroundColor: Colors.amber,
                                minimumSize: Size(50, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  TeamBPoints += 10;
                                });
                              },
                              child: Text(
                                'Add 10 Points',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12),
                    backgroundColor: Colors.amber,
                    minimumSize: Size(150, 70),
                  ),
                  onPressed: () {
                    setState(() {
                      TeamAPoints = 0;
                      TeamBPoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
