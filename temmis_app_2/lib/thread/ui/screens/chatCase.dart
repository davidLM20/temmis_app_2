import 'dart:async';

import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/thread/model/route.dart';
import 'package:temmis_app_2/thread/ui/widgets/ModalBottom.dart';
//import 'package:temmis_app_2/user/ui/widgets/back_button.dart';
import 'package:temmis_app_2/thread/ui/widgets/bubbleChat.dart';
import 'package:temmis_app_2/user/ui/screens/alert_screen.dart';
//import 'package:temmis_app_2/thread/model/case.dart';

class ChatCase extends StatefulWidget {
  final Hilo hilo;
  final String myRole;

  ChatCase({
    Key key,
    @required this.hilo,
    @required this.myRole,
  }) : super(key: key);
  @override
  _ChatCaseState createState() => _ChatCaseState();
}

class _ChatCaseState extends State<ChatCase> {

  //*****Medtodo de optencion de tiempo */
  /*_timer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(DateTime.now());
    });
  }*/


  int _progress = 1, i = 1, _idRoute = 2, _selectItem;

  List<BubbleChat> _message = <BubbleChat>[];

  List<BubbleChat> _message2 = <BubbleChat>[
    BubbleChat(
      isMe: true,
      message: "hola",
    ),
    BubbleChat(
      isMe: true,
      message: "EL 17 de diciembre de enero",
    ),
    BubbleChat(
      isMe: false,
      message: "Holi",
    ),
    BubbleChat(
      isMe: true,
      message: "EL 17 de diciembre de noviembre",
    ),
    BubbleChat(
      isMe: false,
      message: "EL 17 de diciembre de noviembre",
    ),
    BubbleChat(
      isMe: false,
      message: "EL 17 de diciembre",
    )
  ];

  _timer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(DateTime.now());
    });
  }

  void _selectEvent() async {
    print("hilo:  $_message");

    //Recopila el id del hilo seleccionado
    final tempId = widget.hilo.route[this._idRoute].event
        .indexWhere((event) => event.id == this.i);

    //Imprime el rol del chat
    print("role: ${widget.hilo.route[this._idRoute].event[tempId].role}");
    this.i = widget.hilo.route[this._idRoute].event[tempId].next;
    _printMensaje(
        widget.hilo.route[this._idRoute].event[tempId].text,
        widget.hilo.route[this._idRoute].event[tempId].role,
        _isMe(widget.hilo.route[this._idRoute].event[tempId].role));
  }

  // funciones
  void _printMensaje(String tempText, String tempRole, bool isMe) {
    BubbleChat message = new BubbleChat(
      message: tempText,
      isMe: isMe,
    );
    setState(() {
      _message.insert(0, message);
    });
  }

  bool _isMe(String role) {
    if (widget.myRole == role) {
      return true;
    } else {
      return false;
    }
  }

  int _selectRole() {
    return widget.hilo.route.indexWhere((route) => route.role == widget.myRole);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._idRoute = _selectRole();
  }

  // final topo = ;

  //final boto = ;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: IndevColors.gold,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: IndevColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  // parte superior de la pantalla inclullendo el
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10.0),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: BackButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: IndevColors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: EdgeInsets.all(9),
                        ),
                        Container(
                          //alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  text: "Audiencia 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xDD000000),
                                      fontSize: 15.0,
                                      letterSpacing: 1,
                                      wordSpacing: 1),
                                ),
                              ),
                              //Spacer(flex: 1,),
                              RichText(
                                text: TextSpan(
                                  text: "Online...  ",
                                  style: TextStyle(
                                      color: Color(0xDD000000),
                                      fontSize: 15.0,
                                      letterSpacing: 1,
                                      wordSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                        ), //texto
                      ],
                    ),
                  )
                  //color: IndevColors.blue,
                  ,
                ),
              ),
            ),

            //BubbleChat(isMe: true),

            Expanded(
              //height: double.maxFinite,
              child: Container(
                //alignment: AlignmentDirectional.topCenter,
                //color: IndevColors.blue2,

                //width: double.infinity,
                //child: BubbleChat(isMe: true),
                //   child: Flexible(
                child: Scaffold(
                  body: ListView.builder(
                    itemCount: _message.length,
                    reverse: true,
                    itemBuilder: (_, int index) => _message[index],
                    //addAutomaticKeepAlives: true,
                  ),
                ),

                margin: EdgeInsets.only(bottom: 10),
                //
              ),
            ), //burbujas

            //**********metodo de obtencion de hora*/
            /*Container(
              child: _timer(),
            ),*/
            Container(
              //alignment: AlignmentDirectional.bottomCenter,
              //padding: EdgeInsets.all(1.0),
              //color: Color(0xff00adb5),
              alignment: Alignment.centerRight,
              child: Container(
                  padding: EdgeInsets.only(bottom: 7.0, left: 7.0, right: 7.0),
                  child: Container(
                      //padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(4.0),
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFF1F1F1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Icon(Icons.people, color: IndevColors.black),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(4.0),
                            width: 260.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFF1F1F1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ModalBottom1(),
                          ),
                          Spacer(),
                          Container(
                              padding: EdgeInsets.all(4.0),
                              width: 55.0,
                              height: 55.0,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Overlay(
                                        initialEntries: [
                                          OverlayEntry(builder: (context) {
                                            return AlertScreen();
                                          }),
                                        ],
                                      );
                                    }));
                                  },
                                  child: Center(
                                    child: Icon(Icons.send,
                                        color: IndevColors.black),
                                  ))),
                          Spacer(),
                          
                        ],
                      ),
                      FlatButton(
                            textColor: Color(0xff00adb5),
                            onPressed: () => _selectEvent(),
                            child: Text(
                              "SIGUIENTE",
                              style: const TextStyle(
                                color: Color(0xff00adb5),
                                fontFamily: "Comfortaa",
                                fontStyle: FontStyle.normal,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                    ],
                  ))),
              //child: Container(child: Text('hola'),)

            ),
          ],
        ),
      ),
    ));
  }
}
