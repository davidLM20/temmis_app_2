import 'package:flutter/material.dart';

class CardCases extends StatelessWidget{

  String txt_card;
  Color colors;
  
  CardCases(this.txt_card);
  @override
  Widget build(BuildContext context) {

    final star = Container(
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 55.0,
      ),
    );

    final txt_case = Container(
      margin: EdgeInsets.only(
        right: 50.0,top: 20.0, bottom: 130.0 
      ),
      child: Text(txt_card,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black),
        ),
    );
    
    final card = Container(
      margin: EdgeInsets.only(
        left: 35.0
      ),
      height: 270.0,
      width: 170.0,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        child: Column(
          children: <Widget>[
            txt_case,
            star,
            
          ],
        ),
        
        ),
      )
    );
    
    
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          card,
        ],
      ),
    );
  }
}


