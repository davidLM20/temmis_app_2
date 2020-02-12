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
    BubbleChat(isMe: true,),
    BubbleChat(isMe: true,),
    BubbleChat(isMe: false,),
    BubbleChat(isMe: true,),
    BubbleChat(isMe: false,),
    BubbleChat(isMe: false)
  ];
  
  
  // funciones


  
  final topo = Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 10.0),
    child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: BackButtonIcon(),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: IndevColors.blue,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          padding: EdgeInsets.all(9),
        ),
        Container(
          //alignment: Alignment.bottomLeft,
          padding:
              EdgeInsets.only(top: 25.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Audiencia 1 ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xDD000000),
                      fontSize: 15.0,
                      fontFamily: 'Schyler',
                      letterSpacing: 1,
                      wordSpacing: 1),
                ),
              ),
              //Spacer(flex: 1,),
              RichText(
                text: TextSpan(
                  text: "Online... ",
                  style: TextStyle(
                      color: Color(0xDD000000),
                      fontSize: 15.0,
                      fontFamily: 'Schyler',
                      letterSpacing: 1,
                      wordSpacing: 1),
                ),
              ),
            ],
          ),
        ),//texto
      ],
    ),
  );
   

  final boto = Container(
    //color: IndevColors.black,
    //width: double.infinity,
    //child: Text('asd'),
    //height: 12.0,
    //width: 12.0,
     child:Row(
       
       children: <Widget>[
         
         Container(
           padding: EdgeInsets.all(
              4.0
           ),
           width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(128, 128, 128,0.4),
            borderRadius: BorderRadius.all(Radius.circular(20)
               
            )
            ),
           child: FlatButton(onPressed: null, child: Icon( 
             Icons.people,
             color: IndevColors.black) ),
         ),
         Spacer(),
         Container(
           padding: EdgeInsets.all(
          4.0
           ),
           width: 260.0,
           height: 60.0,
           decoration: BoxDecoration(
             color: Color.fromRGBO(128, 128, 128,0.4),
             borderRadius: BorderRadius.all(Radius.circular(20)
               
             )
           ),
           child: ModalBottom1(
             
           ),
  
         
         ),
         Spacer(),
         Container(
           padding: EdgeInsets.all(
          4.0
           ),
           width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(128, 128, 128,0.4),
            borderRadius: BorderRadius.all(Radius.circular(20)
               
            )
          ),
           child: FlatButton(onPressed: null, child: Icon( 
             Icons.send,
             color: IndevColors.black) ),
         ),
         
       ],
     )
    
  );

  Widget build(BuildContext context) {
    return Container(
      color: IndevColors.yellow,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: IndevColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
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
                  height: 80.0,
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
                alignment: AlignmentDirectional.topCenter,
                //color: IndevColors.blue2,
               
                //width: double.infinity,
                //child: BubbleChat(isMe: true),
              //   child: Flexible(
                child: ListView.builder(
                itemCount: _message.length,
                reverse: true,
                itemBuilder: (_, int index) => _message[index],
                addAutomaticKeepAlives: true,
              ),
              //   ),
                 
                 
                 margin: EdgeInsets.only(bottom: 7),
                //  
              ),
            ), //burbujas
            
            Container(
              //alignment: AlignmentDirectional.bottomCenter,
                //padding: EdgeInsets.all(1.0),
                //color: Color(0xff00adb5),
                alignment: Alignment.centerRight,
                child: Container(
                  
                  padding: EdgeInsets.only(
                    bottom: 7.0,
                    left: 7.0,
                    right: 7.0
                  ),
                  
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


