import 'package:flutter/material.dart';
import 'package:temmis_app_2/user/ui/widgets/role_card.dart';

class ListRol extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          RoleCard("Juez", "Descripcion","1"),
          RoleCard("Fiscalia", "Descripcion","2"),
          RoleCard("Defensa", "Descripcion","3")
        ],
      ),
    );
  }

}