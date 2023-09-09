import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Module 5 Assignment',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 70.0,
        toolbarHeight: 100.0,
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.add_business,
            color: Colors.white,
            size: 28.0,
          ),
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 28.0,
            ),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is mod 5 Assignment',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10.0),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 21.0,

                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'My '),
                  TextSpan(
                    text: 'phone ',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'name ',
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:'Your phone name',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
