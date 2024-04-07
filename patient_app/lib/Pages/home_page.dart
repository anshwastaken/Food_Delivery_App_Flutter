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
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20),
        child: Column(
          
          children: [
            Text("Hello Ansh",
            style: TextStyle(color: Colors.blueAccent
            ,fontSize: 20.0,
            fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}