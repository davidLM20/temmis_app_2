import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';

class CardCases extends StatelessWidget{
  

  String txt_card;
  String num_case;
  
  CardCases(this.txt_card, this.num_case);
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

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
    final star_void = Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
        size: 40.0,
      ),
    );


    final txt_case = Container(
      margin: EdgeInsets.only(
        right: 50.0,top: 20.0, bottom: SizeConfig.blockSizeVertical*20,
      ),
      child: Text(txt_card,
        style: TextStyle(
          fontSize: SizeConfig.blockSizeHorizontal*7,
          color: Colors.white,
          fontFamily: 'Schyler'),
        ),
    );
    
    final card = Container(
      margin: EdgeInsets.only(
        left: 35.0,
      ),
      height: SizeConfig.blockSizeVertical*35,
      width: SizeConfig.blockSizeHorizontal*43,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        child: Column(
          children: <Widget>[
            txt_case,
            Row(
              children: <Widget>[
                star,
                star_medium,
                star_void
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




