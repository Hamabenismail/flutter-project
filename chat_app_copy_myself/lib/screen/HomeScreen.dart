import 'package:chat_app_copy_myself/screen/CategorySelector.dart';
import 'package:flutter/material.dart';

import 'chatList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
       appBar: AppBar(
         centerTitle: true,
         leading: IconButton(
           icon: Icon(
             Icons.menu,
             color: Colors.white,
           ),
         ),
        elevation: 0.0,
         actions: [
           IconButton(icon: Icon(
             Icons.search,
             color: Colors.white
           ), onPressed: null)
         ],
       ),
      body: Column(
        children: [
          CategorySelector(),
          ChatList()
        ],
      ),
    );
  }
}
