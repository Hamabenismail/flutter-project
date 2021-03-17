import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String task;
  TaskWidget(
      this.task
      );
  @override
  _TaskWidgetState createState() => _TaskWidgetState(this.task);
}

class _TaskWidgetState extends State<TaskWidget> {
  final String taskpassed ;
  _TaskWidgetState(
      this.taskpassed
      );
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height*0.80,
      child: ListView(
        children: [
          Divider(),
          Text(taskpassed),
          Divider()
        ],
      ),
    );
  }
}
