import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/widgets/card.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: SizeConfig.blockSizeVertical * 40,
      margin: EdgeInsets.only(
        top: SizeConfig.safeBlockVertical * 5,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardCases(
            "Caso 1",
            "caso 1",
            "4",
          ),
          Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.4,
                child: CardCases(
                  "Caso 2",
                  "caso 2",
                  "5",
                ),
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 15,
                width: SizeConfig.blockSizeHorizontal * 45,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 11,
                    right: SizeConfig.blockSizeHorizontal * 2,
                    left: SizeConfig.blockSizeHorizontal * 11,
                    bottom: SizeConfig.blockSizeHorizontal * 2),
                child: SvgPicture.asset("assets/img/bloquear.svg"),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.4,
                child: CardCases(
                  "Caso 3",
                  "caso 3",
                  "6",
                ),
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 15,
                width: SizeConfig.blockSizeHorizontal * 45,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 11,
                    right: SizeConfig.blockSizeHorizontal * 2,
                    left: SizeConfig.blockSizeHorizontal * 11,
                    bottom: SizeConfig.blockSizeHorizontal * 2),
                child: SvgPicture.asset("assets/img/bloquear.svg"),
              )
            ],
          )
        ],
      ),
    );
  }
}
