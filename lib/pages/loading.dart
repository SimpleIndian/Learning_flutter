import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void getdata() async {
      Response response = await get('https://jsonplaceholder.typicode.com/todos/2');// create request and get the data
     Map data = jsonDecode(response.body); //decode the json
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Loading')),
        body: SafeArea(
          child: Center(
            child: Text('Loading Screen'),
          ),
        ));
  }
}
