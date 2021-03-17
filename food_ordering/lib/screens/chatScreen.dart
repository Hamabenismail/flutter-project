import 'package:flutter/material.dart';
import 'package:food_ordering/models/message_model.dart';
import 'package:food_ordering/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user ;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  buildMessage(Message message , bool isMe) {
    return Container(
      margin: isMe ? EdgeInsets.only(left: 80.0,bottom: 15.0,top:5.0): EdgeInsets.only(left:5.0,bottom: 15.0,top:5.0) ,
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 25.0),
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
        borderRadius: isMe ? BorderRadius.only(
          topLeft: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
        ) : BorderRadius.only(
        topRight: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      )
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Text(message.time),
            SizedBox(height: 5.0,),
            Text(message.text)


    ]),
    );
  }

  buildMessagerComposer() {

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          ),
          Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {
              print(value);
            },
            decoration: InputDecoration(
              hintText: 'Send a message'
            ),
          )),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(

          leading: IconButton(
            icon: Icon(
              Icons.flag
            )
          ),
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
              widget.user.name,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
          ),
          elevation: 0.0,
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.more_horiz
                )
                , onPressed: (){})
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children:   [
            Expanded(
              child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(

                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)
                )
              ),
              child: ClipRRect(
                borderRadius:  BorderRadius.only(

                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top:15.0),
                    itemCount: messages.length,
                    itemBuilder: (context,index) {
                        final Message message = messages[index] ;
                        final bool isMe = messages[index].sender.id == currentUser.id ;
                        return buildMessage(message,isMe);
                    }
                ),
              ),
          ),
            ),
          buildMessagerComposer(),
          ],
        ),
      ),
    );
  }
}