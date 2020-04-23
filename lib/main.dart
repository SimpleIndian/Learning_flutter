import 'package:flutter/material.dart';
import 'package:my_new_app/pages/choose_location.dart';
import 'package:my_new_app/pages/home.dart';
import 'package:my_new_app/pages/loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/locate': (context) => LocationChooser(),
        '/home': (context) => Home(),
      },
    ));
