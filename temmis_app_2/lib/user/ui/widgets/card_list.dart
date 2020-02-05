import 'package:flutter/material.dart';
import 'package:temmis_app_2/user/ui/widgets/card.dart';

class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Container(
      height: 300.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardCases("Caso 1","caso 1"),
          CardCases("Caso 2","caso 2"),
          CardCases("Caso 3","caso 3"),
        ],
      ),
    );
  }

}