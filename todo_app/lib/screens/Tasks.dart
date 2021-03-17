

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/TaskWidget.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<String> texts = [
    'flutter course',
    'aws course',
    'ssfsf'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.80,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0,left: 15.0),
            child: Text(
              'Today - Wed Mar 17',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.5,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          listOfWidgets(texts),
        ],
      ),
    );

  }
}

Widget listOfWidgets(List<String> items) {
  List<Widget> list = List<Widget>();
  for (var i in items) {
    list.add(Divider());
    list.add(Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Text(i),
    ));
  }
  return Wrap(
      spacing: 5.0, // gap between adjacent chips
      runSpacing: 10.0, // gap between lines
      children: list);
}


