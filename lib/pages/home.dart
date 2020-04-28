import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data: ModalRoute.of(context).settings.arguments; //receiving the data from different route.
  
    String bgimg = data['isDay']?'https://images.unsplash.com/photo-1524046346361-5a9c9592fb74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60':'https://images.unsplash.com/photo-1536746803623-cef87080bfc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
    Color bgCol = data['isDay']? Colors.orange[100]:Colors.black;
   
    return Scaffold(
      backgroundColor: bgCol,
        body: SafeArea(
      child: Container(
        decoration:BoxDecoration(
          image: DecorationImage(
            image:NetworkImage(bgimg),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0,0.0, 10.0, 20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${data['time']}',
                  style: TextStyle(
                    fontSize: 40.5,
                    color: Colors.white,
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
                    color: Colors.white,
                    fontFamily: 'ubuntu',
                  ),
                ),
                SizedBox(height: 20.0),
                RaisedButton.icon(
                  elevation: 0.0,
                  onPressed: ()async {
                   dynamic result = await Navigator.pushNamed(context, '/locate');
                    setState((){
                       data = {
                         //here you have access to the the all the thing send by navigator
                        'time':result['time'],
                        'location':result['location'],
                        'isDay':result['isDay'],
                        'flag':result['flag'],
                      };
                    });
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
      ),
    ));
  }
}
