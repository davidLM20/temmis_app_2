import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/widgets/card.dart';

class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    
        return Container(
          height: SizeConfig.blockSizeVertical*40,
          margin: EdgeInsets.only(
            top: SizeConfig.safeBlockVertical*5,
          ),
           
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
    
    