import 'package:flutter/material.dart';
import 'package:todo_app/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todoist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Color(0xFFFEF9EB)
      ),
      home: HomeScreen(),
    );
  }
}
