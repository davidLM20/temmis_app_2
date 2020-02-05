import 'package:flutter/material.dart';
import 'package:temmis_app_2/thread/ui/screens/chatCase.dart';
import 'package:temmis_app_2/user/ui/screens/case_selection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Temis Ascendere',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SelectCase(),
      home: ChatCase(),
      //home: ChatCase(storage: CounterStorage()),
    );
  }

}

