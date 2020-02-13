import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/thread/model/route.dart';
import 'package:temmis_app_2/thread/ui/widgets/bubbleChat.dart';
import 'package:temmis_app_2/user/ui/screens/case_selection.dart';
import 'package:temmis_app_2/user/ui/widgets/alerDialog.dart';

import 'package:frideos/frideos.dart';

class ChatCase extends StatefulWidget {
  final Hilo hilo;
  final String myRole;

  ChatCase({
    Key key,
    @required this.hilo,
    @required this.myRole,
  }) : super(key: key);
  @override
  _ChatCaseState createState() => _ChatCaseState("4");
}

class _ChatCaseState extends State<ChatCase> {
  //*****Medtodo de optencion de tiempo */
  /*_timer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(DateTime.now());
    });
  }*/

  int next = 0;
  String text = '';

  final String avatarRol;

  final streamedNext = StreamedValue<int>();
  final streamedText = StreamedValue<String>();

  int _progress = 1, i = 1, _idRoute = 2, _selectItem;

  List<BubbleChat> _message = <BubbleChat>[];
  List<SelectOption> _option = <SelectOption>[];

  _ChatCaseState(this.avatarRol);

  /*_timer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(DateTime.now());
    });
  }*/

  int tempId;
  void _selectEvent() async {
    print("hilo:  $_message");
    //Recopila el id del hilo seleccionado
    final tempId = widget.hilo.route[this._idRoute].event
        .indexWhere((event) => event.id == this.i);
    this.tempId = tempId;

    //Imprime el rol del chat
    if (widget.hilo.route[this._idRoute].event[tempId].option != null) {
      for (var i = 0;
          i < widget.hilo.route[this._idRoute].event[tempId].option.length;
          i++) {
        _printMensaje2(
            widget.hilo.route[this._idRoute].event[tempId].option[i].text,
            widget.hilo.route[this._idRoute].event[tempId].option[i].next);
      }
    } else if (widget.hilo.route[this._idRoute].event[tempId].scoreTotal !=
        null) {
      _showDialogFlash();
    } else {
      this.i = widget.hilo.route[this._idRoute].event[tempId].next;
      _printMensaje(
          widget.hilo.route[this._idRoute].event[tempId].text,
          widget.hilo.route[this._idRoute].event[tempId].role,
          _isMe(widget.hilo.route[this._idRoute].event[tempId].role));
    }
  }

  void _printMensaje2(String tempText, int next1) {
    SelectOption me = new SelectOption(
      message: tempText,
      next: next1,
      score: 100,
      onChangeDate: (newdate) {
        setState(() {
          next = newdate;
        });
      },
      onChangeText: (newtext) {
        setState(() {
          text = newtext;
        });
      },
    );
    setState(() {
      _option..insert(0, me);
    });
  }

  // funciones
  void _printMensaje(String tempText, String tempRole, bool isMe) {
    BubbleChat message = new BubbleChat(
      message: tempText,
      isMe: isMe,
      role: tempRole,
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
    streamedNext.value = next;
    streamedText.value = text;
  }

  @override
  void dispose() {
    streamedNext.dispose();
    streamedText.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      // parte superior de la pantalla inclullendo el boton
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10.0),
                        //padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
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
                              width: SizeConfig.blockSizeHorizontal * 12,
                              height: SizeConfig.blockSizeVertical * 6,
                              decoration: BoxDecoration(
                                color: IndevColors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              padding: EdgeInsets.all(9),
                              child: _avatar(avatarRol),
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
                      padding:
                          EdgeInsets.only(bottom: 7.0, left: 7.0, right: 7.0),
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
                                child: Icon(Icons.people,
                                    color: IndevColors.black),
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
                                child: Center(
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      text != ""
                                          ? "$text"
                                          : "Seleccione una respuesta",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              // boton de enviar
                              Container(
                                  padding: EdgeInsets.all(4.0),
                                  width: 55.0,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF1F1F1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: GestureDetector(
                                      onTap: () {
                                        print(this.i);
                                        print(next);
                                        if (next != 0) {
                                          print("siii $next");
                                          _printMensaje(
                                              text, widget.myRole, true);
                                          this.i = next;
                                          next = 0;
                                          _option.clear();
                                          animatedContainer();
                                        } else {
                                          if (_option.isEmpty) {
                                            _selectEvent();
                                          } else {
                                            animatedContainer();
                                          }
                                        }
                                        //_showDialogFlash();
                                      },
                                      child: Center(
                                        child: Icon(Icons.send,
                                            color: IndevColors.black),
                                      ))),
                              Spacer(),
                            ],
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            //color: IndevColors.gold,
                            height: _height,
                            width: _width,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: ListView.builder(
                                itemCount: _option.length,
                                itemBuilder: (_, int index) => _option[index],
                                //addAutomaticKeepAlives: true,
                              ),
                            ),
                          )
                        ],
                      ))),
                  //child: Container(child: Text('hola'),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  var _height = 0.0;
  var _width = double.infinity;

  animatedContainer() {
    setState(() {
      _height = _height == 0 ? 300 : 0;
      //_width = _width == 0 ? 200 : 0;
    });
  }

  Widget _avatar(String role) {
    return Container(
        width: SizeConfig.blockSizeVertical * 8,
        height: SizeConfig.blockSizeVertical * 8,
        decoration: BoxDecoration(
          color: IndevColors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.all(2),
        child: _selectAvatar(role,
            height: SizeConfig.blockSizeVertical * 100,
            width: SizeConfig.blockSizeHorizontal * 100));
  }

  SvgPicture _selectAvatar(String iconRol,
      {Color color, double height, double width}) {
    var icon;
    switch (iconRol.toLowerCase()) {
      case "4":
        icon = SvgPicture.asset(
          "assets/img/caso.svg",
          height: 100,
          width: 100,
        );
        break;
      case "5":
        icon = SvgPicture.asset(
          "assets/img/criminal.svg",
          height: 100,
          width: 100,
        );
        break;
      case "6":
        icon = SvgPicture.asset(
          "assets/img/ley.svg",
          height: 100,
          width: 100,
        );
        break;
    }
    return icon;
  }

  void _showDialogFlash() {
    FlashHelper.simpleDialog(context,
        title: 'Felicitaciones!',
        message: '⚡️Has impartido Justica',
        negativeAction: Text(
          'Nuevo Rol',
          style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
        ),
        onNegativeActionTap: (controller) => SelectCase(),
        positiveAction: Text(
          'Menú',
          style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),
        ),
        positiveActionTap: (controller) => controller.dismiss());
  }
}

class SelectOption extends StatelessWidget {
  final Function(int dateTime) onChangeDate;
  final Function(String text) onChangeText;
  final int next;
  final int score;
  final String message;

  const SelectOption(
      {this.next,
      this.score,
      this.message,
      this.onChangeDate,
      this.onChangeText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xFFFFF7E4),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: GestureDetector(
          onTap: () {
            onChangeDate(next);
            onChangeText(message);
            print("joder $next");
          },
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ));
  }
}
