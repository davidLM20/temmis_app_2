import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/user/ui/widgets/card_list_rol.dart';


class SelectRol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final txt_chargues = Container(
      margin: EdgeInsets.only(top: 120.0, bottom: 20.0, left: 30.0),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Color(0xDD000000),
                fontSize: 40.0,
                letterSpacing: 1,
                wordSpacing: 3000),
            children: <TextSpan>[
              TextSpan(
                text: "Formulación ",
                style: TextStyle(
                    fontFamily: 'Schyler',
                )
              ),
              TextSpan(
                  text: "Cargos",
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    color: Color(0xDD000000),
                    letterSpacing: 1,
                  ))
            ]),
      ),
    );

    final back_button_role = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 50.0, right: 300.0),
      child: InkWell( child: Icon(Icons.arrow_back, size: 40.0,), onTap: (){
        Navigator.pop(context);
      },),
      
    );

    return Scaffold(
      body: Container(
        color: IndevColors.gold,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0))),
            margin: EdgeInsets.only(left: 30.0),
            child: Column(
              children: <Widget>[
                back_button_role,
                txt_chargues,
                ListRol(),
              ],
            ))),
    );
  }
}
