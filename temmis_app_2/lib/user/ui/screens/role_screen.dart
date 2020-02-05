import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class SelectRol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final txt_chargues = Container(
      margin: EdgeInsets.only(top: 70.0, bottom: 20.0, left: 35.0),
      child: RichText(
        text: TextSpan(
            style: TextStyle(
              color: Color(0xDD000000),
              fontSize: 25.0,
              fontFamily: "Calibre-Semibold",
              letterSpacing: 1,
            ),
            children: <TextSpan>[
              TextSpan(text: "Formulacion", style: TextStyle(wordSpacing: 300)),
              TextSpan(
                  text: "Cargos",
                  style: TextStyle(
                    color: Color(0xDD000000),
                    fontFamily: "Comfortaa",
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1,
                  ))
            ]),
      ),
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
                    BackButton(),
                    txt_chargues, ],
                )
              )
            )
          );
  }
}
