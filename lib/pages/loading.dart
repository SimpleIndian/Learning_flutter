import 'package:flutter/material.dart';
import 'package:my_new_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
 
  String nowTime = 'Loading....☁☁'; //add as a placeholder

  void setTime() async {
    WorldTime currentTime = WorldTime(location:'kolkata', url:'Asia/Kolkata',flag: 'get.png');
    await currentTime.getTime();
    print(currentTime.time); 

    setState(() {
      nowTime =currentTime.time;  //setting the real value
    });
  }

  @override
  void initState() {
    super.initState();
    setTime();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Loading')),
        body: SafeArea(
          child: Center(
            child: Text('$nowTime'),
          ),
        ));
  }
}
