import 'package:flutter/material.dart';

class BascetBallApp extends StatefulWidget {
  const BascetBallApp({super.key});

  @override
  State<BascetBallApp> createState() => _BascetBallAppState();
}

class _BascetBallAppState extends State<BascetBallApp> {
  int teamABoint = 0;
  int teamBBoint = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamABoint',
                      style: const TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamABoint += 1;
                          });
                        },
                        child: const Text('Add 1 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamABoint += 2;
                          });
                        },
                        child: const Text('Add 2 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamABoint += 3;
                          });
                        },
                        child: const Text('Add 3 Point')),
                  ],
                ),
              ),
              const SizedBox(
                height: 350,
                child: VerticalDivider(
                  thickness: 3,
                  indent: 50,
                ),
              ),
              SizedBox(
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamBBoint',
                      style: const TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBBoint += 1;
                          });
                        },
                        child: const Text('Add 1 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBBoint += 2;
                          });
                        },
                        child: const Text('Add 2 Point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBBoint += 3;
                          });
                        },
                        child: const Text('Add 3 Point')),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size.fromWidth(200),
                  backgroundColor: Colors.orange),
              onPressed: () {
                setState(() {
                  teamABoint = 0;
                  teamBBoint = 0;
                });
              },
              child: const Text('Reset')),
        ],
      ),
    );
  }
}
