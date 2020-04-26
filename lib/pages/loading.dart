import 'package:flutter/material.dart';
import 'package:my_new_app/services/worldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setTime() async {
    WorldTime currentTime =
        WorldTime(location: 'kolkata', url: 'Asia/Kolkata', flag: 'get.png');
    await currentTime.getTime();
     Navigator.pushReplacementNamed(context, '/home',arguments: {
       'location':currentTime.location,
       'flag':currentTime.flag,
       'time':currentTime.time
     }); //sending data to different route using arguments.
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.green,
          size: 70.0,
        ),
      ),
    ));
  }
}
