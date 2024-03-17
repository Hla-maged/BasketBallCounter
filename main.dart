import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounter());
}

class BasketBallCounter extends StatefulWidget {
  State<BasketBallCounter> createState() => _BasketBallCounter();
}

class _BasketBallCounter extends State<BasketBallCounter> {
  int p1 = 0;
  int p2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Points Counter',
            style: TextStyle(fontSize: 22),
          ),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Player 1',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$p1',
                        style: TextStyle(fontSize: 90),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            p1++;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.green,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            p1 += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            p1 += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1,
                    indent: 50,
                    endIndent: 30,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Player 2',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$p2',
                        style: TextStyle(fontSize: 90),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            p2 += 1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.green,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            p2 += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            p2 += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  p1 = 0;
                  p2 = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
