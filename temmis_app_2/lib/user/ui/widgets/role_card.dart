import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temmis_app_2/thread/model/route.dart';
import 'package:temmis_app_2/thread/repository/routeData.dart';
import 'package:temmis_app_2/thread/ui/screens/chatCase.dart';

class RoleCard extends StatelessWidget {
  String txt_role;
  String txt_description;
  String funtion_rol;
  String rol_icon;
  Hilo hilo;
  final RouteData api = new RouteData('assets/case1.json');

  RoleCard(
      this.txt_role, this.txt_description, this.funtion_rol, this.rol_icon);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final avatar = Container(
      height: SizeConfig.blockSizeVertical * 7,
      width: SizeConfig.blockSizeHorizontal * 16,
      margin: EdgeInsets.only(right: 20.0, left: 20.0),
      /*child: Icon(Icons.ac_unit,
        color: Colors.white,
        size: SizeConfig.blockSizeVertical*5,
      ),*/
      child: Container(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1.5),
        child: _selectIcons(rol_icon, color: _selectColor(funtion_rol)),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: _selectColor(funtion_rol)),
    );

    final name_role = Container(
      child: Text(
        txt_role,
        style: TextStyle(
            fontSize: SizeConfig.blockSizeVertical * 3.2,
            fontFamily: 'Schyler'),
      ),
    );

    final description_role = Container(
      child: Text(
        txt_description,
        style: TextStyle(
            fontFamily: 'Schyler', fontSize: SizeConfig.blockSizeVertical * 2),
      ),
    );

    final text_role = Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2.5),
      child: Column(
        children: <Widget>[name_role, description_role],
      ),
    );

    final card_rol = Container(
      height: SizeConfig.blockSizeVertical * 12,
      width: 320.0,
      margin: EdgeInsets.only(
          left: 20.0, right: 20.0, top: SizeConfig.blockSizeVertical * 3),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 2.0),
          borderRadius:
              BorderRadius.circular(SizeConfig.blockSizeVertical * 2)),
      child: Row(
        children: <Widget>[avatar, text_role],
      ),
    );

    return InkWell(
      child: card_rol,
      onTap: () {
        api.getHilo().then((resp) {
          this.hilo = resp;
        }).catchError((err) {
          print("caught $err");
        }).whenComplete(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChatCase(
                        hilo: this.hilo,
                        myRole: "Juez",
                      )));
        });
      },
    );
  }

  Color _selectColor(String rol) {
    var color;
    switch (rol.toLowerCase()) {
      case "1":
        color = IndevColors.pink;
        break;
      case "2":
        color = IndevColors.white;
        break;
      case "3":
        color = IndevColors.blue;
        break;
    }

    return color;
  }

  SvgPicture _selectIcons(String iconRol, {Color color}) {
    var icon;
    switch (iconRol.toLowerCase()) {
      case "4":
        icon = SvgPicture.asset(
          "assets/img/juez_color.svg",
        );
        break;
      case "5":
        icon = SvgPicture.asset("assets/img/fiscalia_color.svg");
        break;
      case "6":
        icon = SvgPicture.asset("assets/img/abogado_color.svg");
        break;
    }
    return icon;
  }
}
