import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)
        .settings
        .arguments; //receiving the data from different route.
    print(data);

    return Scaffold(
        //appBar: AppBar(title: Text('Home')),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                '${data['time']}',
                style: TextStyle(
                  fontSize: 30.5,
                  color: Colors.green,
                  fontFamily: 'ubuntu',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                data['location'],
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'ubuntu',
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton.icon(
                elevation: 0.0,
                onPressed: () {
                  Navigator.pushNamed(context, '/locate');
                },
                icon: Icon(Icons.location_city),
                label: Text('location'),
                color: Colors.greenAccent[100],
                splashColor: Colors.greenAccent[200],
                hoverColor: Colors.red,
                textColor: Colors.green[800],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
