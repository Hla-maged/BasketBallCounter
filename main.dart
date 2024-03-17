// import 'package:flutter/material.dart';

// void main() {
//   runApp(const BuissnessCardApp());
// }
// class BuissnessCardApp extends StatelessWidget {
//   const BuissnessCardApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor:const Color(0xff14548A),
//         body:Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:[
//            const CircleAvatar(
//               radius: 100,
//               backgroundColor: Colors.white,
//               child: CircleAvatar(
//                 radius: 100,
//                 backgroundImage: AssetImage('images/BuissnessCard.jpg'),
//               ),
//             ),
//            const Text(
//               'Hla El-may',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.white,
//                 fontFamily: 'Pacifico',
//               ),
//             ),
//            const Text(
//               'Flutter Developer',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 27,
//                 color: Color(0xffABB2BF),
//               ),
//             ),
//            const Divider(
//               height: 60,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 height: 40,
//                 child: const Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 16),
//                       child: Icon(
//                         Icons.phone,
//                         size: 35,
//                         color: Color(0xff14548A),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 16),
//                       child: Text(
//                         '(+20)1097763442',
//                         style: TextStyle(
//                           fontSize: 22,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               child: Container(
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 16),
//                       child: Icon(
//                         Icons.mail,
//                         size: 35,
//                         color: Color(0xff14548A),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 16),
//                       child: Text(
//                         'hlamaged2020@gmail.com',
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

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
