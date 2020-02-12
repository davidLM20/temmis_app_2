import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class BubbleChat extends StatelessWidget {
  final bool isMe;
  // final String message;
  // final String role;
  // final String myRole;

  //BubbleChat({this.message, this.isMe, this.role, this.myRole});
  BubbleChat({this.isMe});

  Widget build(BuildContext context) {
    return Container(
      //: Colors.black,
<<<<<<< HEAD
      //margin: EdgeInsets.all(4.5),
=======
      margin: EdgeInsets.all(4.5),
>>>>>>> 731ec1983f6152af521162d43affe6833a6558d8
      padding: isMe ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
              mainAxisAlignment:
                  isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //width: 500,
                  //color: Colors.pink,
<<<<<<< HEAD
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Column(children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          isMe
                              ? Container(
                                  width: 60,
                                )
                              : Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                                    child: _avatar('defensa'),
                                  ),
                                  //     child: Align(
                                  //   alignment: Alignment.bottomLeft,
                                  //   child: _avatar('juez'), //avatar
                                  // )
                                ),

                          //),
                          //Spacer(),

                          Expanded(
                            child: Container(
                                //height: 100,
                                //margin: EdgeInsets.only(left: 12, right: 10),
                                padding: EdgeInsets.fromLTRB(18, 1, 1, 15),
                                decoration: BoxDecoration(
                                  color: _selectColor('juez'),
                                  borderRadius: isMe
                                      ? BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(15),
                                        )
                                      : BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(0),
                                        ),
                                ),
                                child: Container(
                                    //flex: 4,
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                  'El 17 de febrergdfgdf gdfgdfgf fg dfg ddg dfg f',
                                  textAlign:
                                      isMe ? TextAlign.end : TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xDD000000),

                                    fontSize: 18,
                                    //letterSpacing: 1,
                                    //wordSpacing: 1
                                  ),
                                ))),
                          ),
                          //Spacer(),
                        ]),
=======
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Column(children: <Widget>[
                    Row(children: <Widget>[
                      isMe
                          ? Container(
                              width: 60,
                            )
                          : Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                                child: _avatar('defensa'),
                              ),
                              //     child: Align(
                              //   alignment: Alignment.bottomLeft,
                              //   child: _avatar('juez'), //avatar
                              // )
                            ),
                      //),
                      //Spacer(),

                      Expanded(
                        child: Container(
                            //height: 100,
                            //margin: EdgeInsets.only(left: 12, right: 10),
                            padding: EdgeInsets.fromLTRB(18, 1, 1, 15),
                            decoration: BoxDecoration(
                              color: _selectColor('juez'),
                              borderRadius: isMe
                                  ? BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    )
                                  : BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                            ),
                            child: Container(
                                //flex: 4,
                                child: Text(
                              'El 17 de febrer',
                              textAlign: isMe ? TextAlign.end : TextAlign.start,
                              style: TextStyle(
                                color: Color(0xDD000000),

                                fontSize: 16,
                                //letterSpacing: 1,
                                //wordSpacing: 1
                              ),
                            ))),
                      ),
                      //Spacer(),
                    ]),
>>>>>>> 731ec1983f6152af521162d43affe6833a6558d8
                    Container(), //hora y fecha
                  ]),
                ),
              ])
        ],
      ),
    );
  }

  Widget _avatar(String role) {
    return Container(
<<<<<<< HEAD
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: IndevColors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
=======
      width: 60,
      height: 70,
      child: Column(
        children: <Widget>[
          Flexible(
              flex: 4,
              child: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(_selectAvatar(role)),
                  backgroundColor: Colors.grey[200],
                  minRadius: 25,
                ),
              )),
          Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  role,
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ))
        ],
>>>>>>> 731ec1983f6152af521162d43affe6833a6558d8
      ),
      padding: EdgeInsets.all(9),
    );
  }

  String _selectAvatar(String role) {
    String _avatar;

    switch (role.toLowerCase()) {
      case "fiscalía":
        _avatar = "https://i.pravatar.cc/150?img=59";
        break;
      case "juez":
        _avatar = "https://i.pravatar.cc/150?img=26";
        break;
      case "secretaria":
        _avatar = "https://i.pravatar.cc/150?img=32";
        break;
      case "defensa":
        _avatar = "https://i.pravatar.cc/150?img=61";
        break;
    }
    return _avatar;
  }

  Color _selectColor(String role) {
    var color;

    switch (role.toLowerCase()) {
      case "fiscalía":
        color = Color(0xFFf0d78c);
        break;
      case "juez":
        color = Color(0xFF4f81c7);
        break;
      case "secretaria":
        color = Color(0xFFC7C7C7);
        break;
      case "defensa":
        color = Color(0xFF64c4ed);
        break;
    }

    return color;
  }
}
