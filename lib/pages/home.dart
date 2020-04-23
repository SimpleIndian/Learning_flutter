import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Text(
                  'main screen',
                  style: TextStyle(fontSize: 20.5, color: Colors.red),
                ),
              ),
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/locate');
                },
                icon: Icon(Icons.edit_location),
                label: Text('choose your current location'),
              )
            ],
          ),
        ));
  }
}
