import 'package:http/http.dart';
import 'dart:convert';
import  'package:intl/intl.dart';
class WorldTime {

  String location;
  String time;
  String flag;
  String url ;
  bool isDayTime ; //true or false if daytime or not;
  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime() async {

    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map map = jsonDecode(response.body);
      String dateTime = map['datetime'];
      String offset = map['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours : int.parse(offset)));


      // set the time property
       isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch(e) {
      print('caught error : $e');
      time = 'could not get time';
    }


  }

}