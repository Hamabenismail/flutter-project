import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am going to be the best'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(

      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
      //   children: [
      //     Text('Hello people'),
      //     FlatButton(
      //       onPressed:(){},
      //       color: Colors.amber,
      //       child: Text('press me'),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       child: Text('Test'),
      //       padding: EdgeInsets.all(30.0),
      //     )
      //   ],
      // ),

      //Center(


        //icon button
        // child: IconButton(
        //   onPressed: (){
        //     print('you clicked me !');
        //   },
        //   icon: Icon(Icons.mail),
        //   color: Colors.amber
        // ),

        //button with icon
        // child: RaisedButton.icon(
        //   onPressed: (){},
        //   icon: Icon(
        //     Icons.mail
        //   ),
        //   label: Text('TEST ME'),
        //   color: Colors.blue,
        // ),

        //raised button : button with shape
        // child: RaisedButton(
        //   onPressed: (){
        //     print('you clicked me');
        //   },
        //   child: Text('click me'),
        // ),

        // icon :
        // child: Icon(
        //   Icons.airline_seat_flat,
        //   color: Colors.red,
        //   size: 50.0,
        // ),
        // image asset
        //child: Image.asset('assets/space1.jpg')
        // image network
        // child: Image.network('path')
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
            'cl'
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}


