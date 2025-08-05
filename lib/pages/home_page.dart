import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Welcome to the Home Page',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
