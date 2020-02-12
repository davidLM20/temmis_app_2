import 'package:flutter/material.dart';

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
      margin: EdgeInsets.all(4.5),
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
      ),
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
