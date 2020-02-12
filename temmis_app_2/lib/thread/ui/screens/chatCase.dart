import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/thread/ui/widgets/ModalBottom.dart';
//import 'package:temmis_app_2/user/ui/widgets/back_button.dart';
import 'package:temmis_app_2/thread/ui/widgets/bubbleChat.dart';
//import 'package:temmis_app_2/thread/model/case.dart';

class ChatCase extends StatefulWidget {
  ChatCase({
    Key key,
  });
  @override
  _ChatCaseState createState() => _ChatCaseState();
}

class _ChatCaseState extends State<ChatCase> {
  List<BubbleChat> _message = <BubbleChat>[
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

  // funciones

  final topo = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 10.0),
    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
    child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: BackButtonIcon(),
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
  );

  final boto = Container(
    //padding: EdgeInsets.only(bottom: 10),
    child: Row(
      children: <Widget>[
        Spacer(),
        Container(
          padding: EdgeInsets.all(4.0),
          width: 55.0,
          height: 55.0,
          decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Icon(Icons.people, color: IndevColors.black),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(4.0),
          width: 260.0,
          height: 55.0,
          decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: ModalBottom1(),
        ),
        Spacer(),
        Container(
            padding: EdgeInsets.all(4.0),
            width: 55.0,
            height: 55.0,
            decoration: BoxDecoration(
                color: Color(0xFFF1F1F1),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Center(
              child: Icon(Icons.send, color: IndevColors.black),
            )),
        Spacer(),
      ],
    ),
  );

  Widget build(BuildContext context) {
    return Container(
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
                  child: topo
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

            Container(
              //alignment: AlignmentDirectional.bottomCenter,
              //padding: EdgeInsets.all(1.0),
              //color: Color(0xff00adb5),
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.only(bottom: 7.0, left: 7.0, right: 7.0),
                child: boto,
              ),
              //child: Container(child: Text('hola'),)
            ),
          ],
        ),
      ),
    );
  }
}
