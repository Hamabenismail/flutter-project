import 'package:flutter/material.dart';
import 'package:food_ordering/models/message_model.dart';
import 'package:food_ordering/widgets/RecentChats.dart';

import 'favoriteContacts.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
        )    
        ),
        child: Column(
          children: [
            FavoriteContacts(),
            RecentChats()
          ],
        ),
      ),

    );
  }
}
