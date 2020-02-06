import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class RoleCard extends StatelessWidget {

  String txt_role;
  String txt_description;
  String funcion;


  RoleCard(this.txt_role, this.txt_description, this.funcion);
 
  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      height: 55.0,
      width: 55.0,
      color: _selectColor(funcion),
      margin: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Icon(Icons.party_mode,
        color: Colors.white,
        size: 45.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: IndevColors.gold
      ),
    );

    final name_role = Container(
      margin: EdgeInsets.only(top: 20.0, right: 30.0),
      child: Text(txt_role,
        style: TextStyle(
          fontSize: 25.0
        ),
      ),
    );

    final description_role = Container(
      margin: EdgeInsets.only(top: 5.0,  right: 3.0),
      child:  Text(txt_description),
    );

    return Container(
      height: 100.0,
      width: 320.0,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2.0),
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Row(
        children: <Widget>[
          avatar,
          Column(
            children: <Widget>[
              name_role,
              description_role
            ],
          )
        ],
      ),
    );
  }
  Color _selectColor(String cases){
    var color;
    switch (cases.toLowerCase()) {
      case "Juez":
        color = IndevColors.pink;
        break;
      case "Fiscalia":
        color = IndevColors.blue2;
        break;
      case "Defensa":
        color = IndevColors.blue;
        break;    
    }

    return color;
  }

}