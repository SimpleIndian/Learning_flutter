import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTimeData() async {
                       /*requesting the data*/
                       
                    //make the request to the server end Point
    Response response = await get('http://worldtimeapi.org/api/timezone/Asia/Kolkata');

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
    int offsetMinute = int.parse(offset.substring(2,4)); 

    //creating datetime object from the string parsing
    DateTime now = DateTime.parse(datetime);

    //adding offset hours and minutes to the datetime

    now = now.add(Duration(hours: offsetHours, minutes: offsetMinute));

  }

  @override
  void initState() {
    super.initState();
    getTimeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Loading')),
        body: SafeArea(
          child: Center(
            child: Text('Loading..'),
          ),
        ));
  }
}
