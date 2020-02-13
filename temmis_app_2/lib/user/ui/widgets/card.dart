import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/screens/role_screen.dart';

class CardCases extends StatelessWidget {
  String txt_card;
  String num_case;
  String case_icon;

  CardCases(this.txt_card, this.num_case, this.case_icon,);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final star = Container(
      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: SizeConfig.blockSizeHorizontal * 13.5,
      ),
    );

    final star_medium = Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
        size: SizeConfig.blockSizeHorizontal * 13.5,
      ),
    );
    final star_void = Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
        size: SizeConfig.blockSizeHorizontal * 13.5,
      ),
    );

    final txt_case = Container(
      margin: EdgeInsets.only(
        right: 50.0,
        top: 20.0,
        bottom: SizeConfig.blockSizeVertical * 4,
      ),
      child: Text(
        txt_card,
        style: TextStyle(
            fontSize: SizeConfig.blockSizeHorizontal * 7,
            color: Colors.white,
            fontFamily: 'Schyler'),
      ),
    );

    final starts = Container(
      child: Row(
        children: <Widget>[star, star_medium, star_void],
      ),
    );

    final avatar = Container(
        height: SizeConfig.blockSizeVertical * 15,
        width: SizeConfig.blockSizeHorizontal * 45,
        margin: EdgeInsets.only(
            right: 20.0,
            left: 20.0,
            bottom: SizeConfig.blockSizeHorizontal * 2),
        child: Container(
          //padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1),
          child: _selectIcons(case_icon,
              height: SizeConfig.blockSizeVertical * 100,
              width: SizeConfig.blockSizeHorizontal * 100),
        ));

    final card = InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SelectRol()));
        },
        child: Container(
            margin: EdgeInsets.only(
                left: 35.0, bottom: SizeConfig.safeBlockVertical * 2.5),
            height: SizeConfig.safeBlockVertical * 40,
            width: SizeConfig.blockSizeHorizontal * 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                child: Column(
                  children: <Widget>[txt_case, avatar, starts],
                ),
                decoration: BoxDecoration(color: _selectColor(num_case)),
              ),
            )));

    
    return Container(child: card);
  }

  

  
  Color _selectColor(String cases) {
    var color;
    switch (cases.toLowerCase()) {
      case "caso 1":
        color = IndevColors.pink;
        break;
      case "caso 2":
        color = IndevColors.blue2;
        break;
      case "caso 3":
        color = IndevColors.blue;
        break;
    }

    return color;
  }

  SvgPicture _selectIcons(String iconRol,
      {Color color, double height, double width}) {
    var icon;
    switch (iconRol.toLowerCase()) {
      case "4":
        icon = SvgPicture.asset(
          "assets/img/caso.svg",
          height: 100,
          width: 100,
        );
        break;
      case "5":
        icon = SvgPicture.asset(
          "assets/img/criminal.svg",
          height: 100,
          width: 100,
        );
        break;
      case "6":
        icon = SvgPicture.asset(
          "assets/img/ley.svg",
          height: 100,
          width: 100,
        );
        break;
    }
    return icon;
  }
}



