import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardId(),
    ));


class CardId extends StatefulWidget {
  @override
  _CardIdState createState() => _CardIdState();
}

class _CardIdState extends State<CardId> {
  int ninjaLevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[50],
        title: Text(
          'My Profile',
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.amber[800]),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/logo2.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              Text(
                'NAME',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Ubuntu',
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Souvik Mandal',
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Ubuntu',
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'NINJA LEVEL',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Ubuntu',
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Ubuntu',
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(children: <Widget>[
                Icon(Icons.email),
                SizedBox(
                  width: 8.0,
                ),
                Text('sam246@gmail.com',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20.0,
                        fontFamily: 'Ubuntu'))
              ])
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel +=1;
          });
        },
        elevation: 10.30,
        backgroundColor:Colors.yellow[50],
       child: Icon(
         Icons.add,
         color:Colors.yellow[900],
       ),
        ),
    );
  }
}


