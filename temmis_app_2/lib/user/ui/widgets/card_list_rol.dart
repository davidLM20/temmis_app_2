import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/widgets/role_card.dart';

class ListRol extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.blockSizeVertical*45,
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical*4),
      child: Column(
        children: <Widget>[
          RoleCard("Juez", "Descripción","1","4"),
          RoleCard("Fiscalía", "Descripción","2","5"),
          RoleCard("Defensa", "Descripción","3","6")
        ],
      ),
    );
  }

}