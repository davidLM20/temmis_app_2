import 'package:flutter/material.dart';

class SelectCase extends StatefulWidget {
  @override
  _SelectCaseState createState() => new _SelectCaseState();
}
class _SelectCaseState extends State<SelectCase> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xff00adb5),
                    fontSize: 30.0,
                    fontFamily: "Calibre-Semibold",
                    letterSpacing: 2,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "TEMIS"),
                    TextSpan(text: "ASCENDERE",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Comfortaa",
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                      )
                    )
                  ]

                ),)
            ],
          ),
        ),
      ),
    );
  }

}
