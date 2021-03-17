import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/models/message_model.dart';
import 'package:food_ordering/screens/chatScreen.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
        ),
        child: ClipRRect(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context,index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) =>
                      ChatScreen(user : chats[index].sender)
                    )
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: chats[index].unread ? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                    )
                  ),
                  margin: EdgeInsets.only(top:5.0,bottom: 5.0,right: 15.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                      children : [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(chats[index].sender.imageUrl),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                chats[index].sender.name,
                              style: TextStyle(
                                color:  Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),
                            ) ,
                            SizedBox(height: 5.0,),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text(
                                  chats[index].text,
                                style: TextStyle(
                                  color : Colors.blueGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),

                    ],
                    ),

                      Column(
                        children: [
                          Text(
                              chats[index].time,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          SizedBox(height: 5.0,),
                          chats[index].unread ? Container(
                              width: 40.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.red
                              ),
                              alignment: Alignment.center,
                              child : Text(
                                    'NEW' ,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12.0
                                ),
                              )
                          ) : Text('')

                      ]
                      )

                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
