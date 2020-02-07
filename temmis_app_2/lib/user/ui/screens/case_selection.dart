import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
import 'package:temmis_app_2/user/ui/screens/role_screen.dart';
import 'package:temmis_app_2/user/ui/widgets/card_list.dart';

class SelectCase extends StatefulWidget {
  @override
  _SelectCaseState createState() => new _SelectCaseState();
}

class _SelectCaseState extends State<SelectCase> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return Scaffold(
      backgroundColor: IndevColors.gold,
        body: SingleChildScrollView(      
          child: Container(
            height: SizeConfig.blockSizeVertical*95,
            width: SizeConfig.blockSizeHorizontal*100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0))
            ),
            
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 12.0, right: 12.0, top: SizeConfig.blockSizeVertical*15, bottom: 8.0),
              ),
              Container(
                margin: EdgeInsets.only(left: 35.0),
                child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*10,
                        letterSpacing: 2,
                        wordSpacing: 100),
                    children: <TextSpan>[
                      TextSpan(text: "TEMIS ",
                      style: TextStyle(
                        fontFamily: 'Schyler'
                      )
                      ),
                      TextSpan(
                          text: "ASCENDERE",
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontFamily: 'Schyler'
                          ))
                    ]),
              ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 70.0, bottom: SizeConfig.blockSizeVertical*5, left: 35.0),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xDD000000),
                        fontSize: SizeConfig.blockSizeHorizontal*7,
                        fontFamily: "Schyler",
                        letterSpacing: 1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Seleccione ",
                            style: TextStyle(wordSpacing: 300)),
                        TextSpan(
                            text: "una audiencia",
                            style: TextStyle(
                              color: Color(0xDD000000),
                              fontFamily: "Schyler",
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1,
                            ))
                      ]),
                ),
              ),
              Center(
                child: InkWell(
                  child: Container(
                    child: CardList(),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectRol()));
                  },
                )
              ),
            ]
            ),
          ),
        ));
  }
}
