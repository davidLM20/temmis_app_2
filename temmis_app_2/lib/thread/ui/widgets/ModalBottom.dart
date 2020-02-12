import 'package:flutter/material.dart';
import 'package:temmis_app_2/thread/model/route.dart';
//import 'package:temmis_app_2/thread/ui/';

class ModalBottom1 extends StatelessWidget {
  //final List<Option> = <Option> options [];
  Option option = Option();

  ModalBottom1({this.option});

  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4.0),
                width: 260.0,
                height: 55.0,
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        _showModalBottomSheet(context);
      },
      //fillColor: Colors.black,
      //constraints: BoxConstraints(minHeight: 50),
      // elevation: 0,
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      // textStyle: TextStyle(
      //   fontSize: 2,
      //   fontFamily: 'OpenSans',
      //   color: Colors.white,
      //   fontWeight: FontWeight.w600,
      // ),
      //child: Text('Seleccione una respuesta'),
    );
  }
}
