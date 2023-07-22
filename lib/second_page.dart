import 'package:flutter/material.dart';

import 'first_page.dart';
class SecondPage extends StatelessWidget {
  const SecondPage ({super.key});
  
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(
      title: const Text("Second Page"),
    ),
    body: Center(
      child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "2",
          style: TextStyle(fontSize: 50),
      ),
      const Text ("You are in the second page"),
      ElevatedButton(
        onPressed: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) => const FirstPage()));
        },
        child: const Text("Go to First Page"),
      )
      ],
    ),
    ),
    );
  }
}