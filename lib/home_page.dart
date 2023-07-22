import 'package:flutter/material.dart';

import 'first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Head Count',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 20,
            ),
            Text('$count',style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  count++;
                });

              },
              child: const Text('Count',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Reset',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            const SizedBox(
              height: 50,
            ),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_){
                    return const FirstPage();

                  }
              ),
              );
            }, child: const Text('Click to go to first page',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))

          ],
        ),
      ),
    );
  }
}