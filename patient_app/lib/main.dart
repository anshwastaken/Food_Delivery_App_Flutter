import 'package:flutter/material.dart';
import 'package:patient_app/Pages/home_page.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => HomePage(),
      },
    );
  }
}
