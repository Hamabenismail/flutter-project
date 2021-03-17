import 'package:flutter/material.dart';
import 'package:todo_app/screens/Tasks.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todoist'),
        centerTitle: true,
        elevation: 0.0,

        actions: [
          IconButton(
              icon: Icon(
               Icons.search
              ),
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(
                  Icons.more_vert
              ),
              onPressed: (){}
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
            children: [
        //header
        UserAccountsDrawerHeader(
        accountName: Text('hama'), accountEmail: Text('test'),
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(

            backgroundColor: Theme.of(context).accentColor,
          ),
        ),
      )],
    )
      ),
      body: ListView(
        children: [
          TasksScreen()
        ],
      ) ,
    );
  }
}
