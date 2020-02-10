import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/widgets/card_list_rol.dart';


class SelectRol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    SizeConfig().init(context);


    final txt_chargues = Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical*10, bottom: 20.0, left: 30.0),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
                color: Color(0xDD000000),
                fontSize: SizeConfig.blockSizeHorizontal*10,
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
      height: SizeConfig.blockSizeVertical*8,
      width: SizeConfig.blockSizeHorizontal*8,
      margin: EdgeInsets.only(top: 50.0, right: SizeConfig.blockSizeHorizontal*70),
      child: InkWell( child: Icon(Icons.arrow_back, size: SizeConfig.blockSizeHorizontal*9,), onTap: (){
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
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal*6),
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
