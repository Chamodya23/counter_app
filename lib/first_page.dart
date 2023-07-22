import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "1",
              style: TextStyle(fontSize: 50),
            ),
            const Text("You are in the first page"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SecondPage()));
              },
              child: const Text("Go to Second Page"),
            )
          ],
        ),
      ),
    );
  }
}