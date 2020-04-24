import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //ui friendly location
  String flag; //custom image
  String time; //readable time
  String url; //url to go the the timezone

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      /*requesting the data*/

      //make the request to the server end Point
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');

      /* Storing and parsing data */

      // Parse the data
      Map getdata = jsonDecode(response.body);
      //storing the needed data in separate varriable
      String datetime = getdata['datetime'];
      //add substring to cut the '+0'
      String offset = getdata['utc_offset'].substring(2, 6);

      /* manipulating data*/

//add substring to cut the all except 5 convert into a integer
      int offsetHours = int.parse(offset.substring(0, 1));
//add substring to cut the all except 30 and convert into a integer
      int offsetMinute = int.parse(offset.substring(2, 4));

      //creating datetime object from the string parsing
      DateTime now = DateTime.parse(datetime);

      //adding offset hours and minutes to the datetime

      now = now.add(Duration(hours: offsetHours, minutes: offsetMinute));

      time = '${now.toString()} 🧭'; //adding actual time to the time varriable

    } catch (e) {
      print('this is a error $e');
      time = 'Could not get the Data..😢';
    }
  }
}
