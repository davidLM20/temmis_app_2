import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class RoleCard extends StatelessWidget {

  String txt_role;
  String txt_description;
  String funtion_rol;


  RoleCard(this.txt_role, this.txt_description, this.funtion_rol);
 
  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      height: 55.0,
      width: 55.0,
      margin: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Icon(Icons.party_mode,
        color: Colors.white,
        size: 45.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: _selectColor(funtion_rol)
      ),
    );

    final name_role = Container(
      child: Text(txt_role,
        style: TextStyle(
          fontSize: 25.0,
          fontFamily: 'Schyler'
        ),
      ),
    );

    final description_role = Container(
      child:  Text(txt_description,
        style: TextStyle(
          fontFamily: 'Schyler'
        ),
      ),
    );

    final text_role =Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(children: <Widget>[
        name_role,
        description_role
      ],),
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
          text_role
        ],
      ),
    );
  }

  Color _selectColor(String rol){
    var color;
    switch (rol.toLowerCase()) {
      case "1":
        color = IndevColors.pink;
        break;
      case "2":
        color = IndevColors.lila;
        break;
      case "3":
        color = IndevColors.blue;
        break;    
    }

    return color;
  }

}