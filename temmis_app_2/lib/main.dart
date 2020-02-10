import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:temmis_app_2/user/ui/screens/case_selection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);
    
    // TODO: implement build
    return MaterialApp(
      title: 'Temis Ascendere',
      theme: ThemeData(
        fontFamily: 'Schyler',
        primarySwatch: Colors.blue,
      ),
      home: SelectCase(),
    );
  }

}

