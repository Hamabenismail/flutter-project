import 'package:flutter/material.dart';
import 'package:food_ordering/models/message_model.dart';
import 'package:food_ordering/screens/chatScreen.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [ Padding(
       padding: EdgeInsets.symmetric(horizontal: 20.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Favorite contacts',
              style: TextStyle(
                  color: Colors.blueGrey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold

              ),
            ),
            IconButton(
                icon: Icon(
                    Icons.more_horiz
                ),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: (){})
          ],
        ),
   ),
          Container(
            height: 120.0,
            color: Theme.of(context).accentColor,
            child: ListView.builder(
                padding: EdgeInsets.only(
                  left : 10.0
                ),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (context,index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) =>
                            ChatScreen(user : favorites[index])
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column (
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0,),
                          Text(
                              favorites[index].name,
                              style: TextStyle(
                                color : Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                              ),
                          )
                      ]
                      ),
                  ),
                ) ;
                }
                )
          )
  ]
      ),
    );
  }
}
