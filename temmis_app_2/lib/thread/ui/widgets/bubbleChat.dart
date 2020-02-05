import 'package:flutter/material.dart';

class BubbleChat extends StatelessWidget {
  final bool isMe;
  final String message;
  final String role;
  final String myRole;

  BubbleChat({this.message, this.isMe, this.role, this.myRole});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Expanded(child: Align(
                  alignment: Alignment.bottomLeft,
                  child: null,//avatar
                )
                ),
                Spacer(),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    //color:
                     
                  ),
                  child: Container(
                    child: Flexible(
                      child: Text(
                        ''
                    ))
                  ),
                )),
                Spacer(),

              ],
            ),
          )
        ],
      ),
    );
  }
}