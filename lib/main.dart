import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[900],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/a.jpg',
                fit: BoxFit.contain,
                height: 100,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Diceee',
                    style: TextStyle(
                      color: Colors.orange[900],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                    ),
                  ))
            ],
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int l = 6;
  int r = 6;
  void change() {
    setState(() {
      l = Random().nextInt(6) + 1;
      r = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      SizedBox(
        height: 10,
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$l.png'),
              onPressed: () {
                change();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$r.png'),
              onPressed: () {
                change();
              },
            ),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        '@rockstarproductions',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ]));
  }
}
