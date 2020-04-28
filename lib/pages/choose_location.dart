import 'package:flutter/material.dart';
import 'package:my_new_app/services/worldTime.dart';

class LocationChooser extends StatefulWidget {
  @override
  _LocationChooserState createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {
  List<WorldTime> location = [
    WorldTime(location: 'kolkata', url: 'Asia/Kolkata', flag: 'india.png'),
    WorldTime(
        location: 'Cambridge',
        url: 'America/Cambridge_Bay',
        flag: 'America.jpg'),
    WorldTime(
        location: 'New York', url: 'America/New_York', flag: 'America.jpg'),
    WorldTime(
        location: 'Indiana Polis',
        url: 'America/Indiana/Indianapolis',
        flag: 'America.jpg')
  ];

  void updateTime(index) async {
    //local varriable
    WorldTime currentTime = location[index];
    //get the data
    await currentTime.getTime();
    //push the data back to the home route
    Navigator.pop(context, {
      'location': currentTime.location,
      'flag': currentTime.flag,
      'time': currentTime.time,
      'isDay': currentTime.isDay,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Choose location'),
        ),
        body: ListView.builder(
            itemCount: location.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0,horizontal:5.0),
                  child: ListTile(
                    onTap: () {
                      //give access to the index
                      updateTime(index);
                    },
                    title: Text(location[index].location,
                    style: TextStyle(fontFamily: 'ubuntu', fontSize: 20.0),),
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/${location[index].flag}')),
                  ),
                ),
              );
            }));
  }
}
