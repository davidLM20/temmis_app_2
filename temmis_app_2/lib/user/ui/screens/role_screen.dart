import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';

class SelectRol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: IndevColors.gold,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0))),
          margin: EdgeInsets.only(left: 30.0),
        ));
  }
}
