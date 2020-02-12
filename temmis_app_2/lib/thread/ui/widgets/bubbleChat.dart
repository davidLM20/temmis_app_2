import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class BubbleChat extends StatelessWidget {
  final bool isMe;
  final String message;
  // final String role;
  // final String myRole;

  //BubbleChat({this.message, this.isMe, this.role, this.myRole});
  BubbleChat({this.isMe, this.message});

  Widget build(BuildContext context) {
    return Container(
      //: Colors.black,
      padding: isMe ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
      child: Column(
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
                  margin: EdgeInsets.only(left: 24, right: 24),
                  padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: Column(children: <Widget>[
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: isMe
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: <Widget>[
                          isMe
                              ? Container(
                                  width: 60,
                                )
                              : Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                    child: _avatar('defensa'),
                                  ),
                                  //     child: Align(
                                  //   alignment: Alignment.bottomLeft,
                                  //   child: _avatar('juez'), //avatar
                                  // )
                                ),

                          //),
                          //Spacer(),
                          Flexible(
                            child: Container(
                                //height: 100,
                                //margin: EdgeInsets.only(left: 12, right: 10),
                                //padding: EdgeInsets.fromLTRB(18, 1, 1, 15),
                                decoration: BoxDecoration(
                                  color: _selectColor('defensa'),
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
                                      message,
                                      textAlign: isMe
                                          ? TextAlign.end
                                          : TextAlign.start,
                                      style: TextStyle(
                                        color: IndevColors.black,
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        //letterSpacing: -0.5,
                                        //wordSpacing: 0.1
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
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: IndevColors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        color = Color(0xFFE5F4F9);
        break;
    }

    return color;
  }
}
