import 'package:flutter/material.dart';
//import 'package:temmis_app_2/thread/ui/widgets/bubbleChat.dart';
//import 'package:temmis_app_2/thread/model/case.dart';

class ChatCase extends StatefulWidget {
  ChatCase({
    Key key,
  });
  @override
  _ChatCaseState createState() => _ChatCaseState();
}

class _ChatCaseState extends State<ChatCase> {
  /*
  Widget build(BuildContext context){
    return Container(
      child: Text(
        'hola owo eeee aslsdaff',
        style:TextStyle(color: Color(0xff00adb5)),
        
      ),
    );
  }
  */
  // funciones

  Widget build(BuildContext context) {
    return Container(
      child: Row(
      children: <Widget>[
      Container(),
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Text('icono')), //iconbutton
              Expanded(child: Text('img')), //img o icon
              Expanded(
                  child: Column(
                children: <Widget>[Text('asd'), Text('jkl')],
              )) //text
            ],
          ),
          Container(child: ListView()),
          Container(
              child: Row(children: <Widget>[
            Expanded(child: Text('otro icono')), // icono
            Expanded(child: Text('eliga su respuesta')), //elige tu respuesta
            Expanded(child: Text('enviar')) //enviar
          ]))
        ],
      )
    ]
    ),
    );
  }
}
