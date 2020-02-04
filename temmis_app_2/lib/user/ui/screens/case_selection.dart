import 'package:flutter/material.dart';
import 'package:temmis_app_2/user/ui/widgets/card.dart';
import 'package:temmis_app_2/user/ui/widgets/card_list.dart';

class SelectCase extends StatefulWidget {
  @override
  _SelectCaseState createState() => new _SelectCaseState();
}

class _SelectCaseState extends State<SelectCase> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 90.0, bottom: 8.0),
              ),
              Container(
                margin: EdgeInsets.only(left: 35.0),
                child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: 2,
                        wordSpacing: 100),
                    children: <TextSpan>[
                      TextSpan(text: "TEMIS "),
                      TextSpan(
                          text: "ASCENDERE",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Comfortaa",
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,
                          ))
                    ]),
              ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50.0, bottom: 20.0, left: 35.0),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xDD000000),
                        fontSize: 25.0,
                        fontFamily: "Calibre-Semibold",
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
                              fontFamily: "Comfortaa",
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
              ))
            ]),
          ),
        ));
  }
}
