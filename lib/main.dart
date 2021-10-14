import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(LaadhuuApp());

class LaadhuuApp extends StatefulWidget {
  LaadhuuApp({Key? key}) : super(key: key);

  @override
  State<LaadhuuApp> createState() => _LaadhuuAppState();
}

class _LaadhuuAppState extends State<LaadhuuApp> {
  int playerOne = 6;

  int playerTwo = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Laadhuu'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      playerOne = Random().nextInt(6) + 1;
                      // print('Dice $playerOne rolled');
                      setState(() {});
                    },
                    // String Interpolation
                    child: Image.asset('images/dice$playerOne.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('You are the winner')));
                      // showDialog(
                      //   context: context,
                      //   builder: (context) {
                      //     return AlertDialog(
                      //       title: Text('Laadhuu App'),
                      //       content: Text(
                      //           'This is not a sophisticated application, it is just for learning.'),
                      //     );
                      //   },
                      // );
                      // setState(() {
                      //   playerTwo = Random().nextInt(6) + 1;
                      // });
                      // print('Dice two rolled');
                    },
                    child: Image.asset('images/dice$playerTwo.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
