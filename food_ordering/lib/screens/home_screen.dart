import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/widgets/category_selector.dart';
import 'package:food_ordering/widgets/chatList.dart';

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
        leading: IconButton(
          icon: Icon(
              Icons.menu,
              color:Colors.white
          ),
        ),
        centerTitle: true,

        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
                Icons.search,
                color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          ChatList()
        ],
      )
    );
  }
}
