// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int value = 0;

  void add() {
    setState(() => value++);
  }

  void sub() {
    if (value > 0) {
      setState(() => value--);
    }
  }

  void reset() {
    setState(() => value = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App'),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COUNTER',
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
                Text(
                  '$value',
                  style: TextStyle(fontSize: 95),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        add();
                      },
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        sub();
                      },
                      child: Icon(Icons.remove, size: 30),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 211, 158, 23),
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onTap: () => reset(),
                    child: Container(
                      height: 45,
                      width: 100,
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'Reset',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                'Designed by ADIL',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 156, 153, 153),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
