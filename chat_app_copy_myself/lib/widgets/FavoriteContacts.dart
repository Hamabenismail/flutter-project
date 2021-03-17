import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      color: Theme.of(context).accentColor,
      child: ListView.builder(
        itemCount: 4 ,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          return Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('asset/greg.jpg'),
                  ),
                  SizedBox(height: 60.0),
                  Text(
                    'Hama',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600

                    ),

                  )
                ],
              ),
          );
        },
      ),
    );
  }
}
