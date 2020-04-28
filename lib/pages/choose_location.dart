import 'package:flutter/material.dart';
import 'package:my_new_app/services/worldTime.dart';
class LocationChooser extends StatefulWidget {
  @override
  _LocationChooserState createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {

List<WorldTime> location = [
WorldTime(location: 'kolkata', url: 'Asia/Kolkata', flag: 'india.png'),
WorldTime(location: 'Cambridge', url: 'America/Cambridge_Bay', flag: 'America.jpg'),
WorldTime(location: 'New York', url: 'America/New_York', flag: 'America.jpg'),
WorldTime(location: 'IndianaPolis', url: 'America/Indiana/Indianapolis', flag: 'America.jpg')
];

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Choose location'),
        ),
        body:ListView.builder(
          itemCount: location.length,
          itemBuilder:(context,index){
              return Card(
                elevation: 10.0,
                child: ListTile(
                  onTap: (){
                    print(location[index].location);
                  },
                  title:Text(location[index].location),
                  leading: CircleAvatar(
                    backgroundImage:AssetImage('images/${location[index].flag}')
                  ),
                ),
              );
          }
          )
      );
  }
}
