import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaApp() ,
));
class NinjaApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _NinjaAppState createState() => _NinjaAppState();
}

class _NinjaAppState extends State<NinjaApp> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id card'),
        centerTitle:  true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left:31),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      ninjaLevel--;
                    });
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.grey[850],
                  ),



              ),),

            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    ninjaLevel++;
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.grey[850],
              ),
            ),
          ],
        ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/thumb-89160.png'),
              radius: 40.0,
            )),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color : Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chum-li',
              style: TextStyle(
                  color : Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Current ninja level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
               Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                  'test@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )),

              ],
            )
          ],

        ),
      ),
    );
        }
}
