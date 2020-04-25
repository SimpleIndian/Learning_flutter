import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

   Map data = {};

  @override
  Widget build(BuildContext context) {

  data = ModalRoute.of(context).settings.arguments; //receiving the data from different route.
   print(data);
   
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Text(
                  '${data['time']}',
                  style: TextStyle(fontSize: 20.5, color: Colors.red),
                ),
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/locate');
                },
                icon: Icon(Icons.edit_location),
                label: Text('choose your current location'),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/load');
                  },
                  child: Icon(
                    Icons.get_app,
                    color: Colors.red,
                    semanticLabel: 'Get DAta',
                  ))
            ],
          ),
        ));
  }
}
