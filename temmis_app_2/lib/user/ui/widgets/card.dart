import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class CardCases extends StatelessWidget{

  String txt_card;
  String num_case;
  
  CardCases(this.txt_card, this.num_case);
  @override
  Widget build(BuildContext context) {

    final star = Container(
      padding: EdgeInsets.only(left: 13.0),
      child: Icon(
        Icons.star,
        color: Colors.amber,       
        size: 40.0,
      ),
    );
    
    final star_medium = Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
        size: 40.0,
      ),
    );


    final txt_case = Container(
      margin: EdgeInsets.only(
        right: 50.0,top: 20.0, bottom: 130.0,
      ),
      child: Text(txt_card,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.white,
          fontFamily: 'Schyler'),
        ),
    );
    
    final card = Container(
      margin: EdgeInsets.only(
        left: 35.0,
      ),
      height: 270.0,
      width: 170.0,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        child: Column(
          children: <Widget>[
            txt_case,
            Row(
              children: <Widget>[
                star,
                star,
                star_medium
              ],
            )           
          ],
        ),
       decoration: BoxDecoration(
         color: _selectColor(num_case)
       ),
        ),
      )
    );
    
    
    return Container(
      child: Row(
        children: <Widget>[
          card,
        ],
      ),
    );
  }

  Color _selectColor(String cases){
    var color;
    switch (cases.toLowerCase()) {
      case "caso 1":
        color = IndevColors.pink;
        break;
      case "caso 2":
        color = IndevColors.blue2;
        break;
      case "caso 3":
        color = IndevColors.blue;
        break;    
    }

    return color;
  }
  
}




