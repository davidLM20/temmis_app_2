import 'package:flutter/material.dart';
import 'package:temmis_app_2/resousers/colors.dart';
import 'package:temmis_app_2/thread/model/route.dart';
import 'package:temmis_app_2/resousers/size_conifg.dart';
//import 'package:temmis_app_2/thread/ui/';

class ModalBottom1 extends StatelessWidget {
  //final List<Option> = <Option> options [];
  SizeConfig sizeConfig = new SizeConfig();
  Option option = Option();
  List<String> opciones = <String>[];

  String text_answer = " holasssssssssss dsasafifffjafdfjfjfjfjfjffjfjfjfjfjfjf";

  ModalBottom1({this.option});
  @override
  
  Widget build(BuildContext context) {
    final opcion = Container(
      child: Flexible(
        child: Container(
        height: SizeConfig.blockSizeVertical * 10,
        width: SizeConfig.blockSizeHorizontal * 80,
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
        child: Container(
          child: Text(      
            text_answer,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: SizeConfig.blockSizeHorizontal * 4),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white),
        ))
        ));

    _showModalBottomSheet(context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(30),
            //     topRight: Radius.circular(20),
            //   ),
            // ),
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.blue,
                  padding: EdgeInsets.only(top: 5.0, bottom: 3.0),
                  child: Text(
                    'Opciones',
                    style: TextStyle(
                      fontSize: 18,
                    ),

                    //textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: IndevColors.gold,
                    
                    child: Column(
                      //para que el contenedor donde se almacena el texto se ajuste al tamaño del texto

                      children: <Widget>[opcion, opcion, opcion, opcion],
                    ),
                    /* child:  Container(
                padding: EdgeInsets.all(10.0),
                                 
                decoration: BoxDecoration(

                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.all(Radius.circular(28))),
                 //Container donde va el texto de las opciones                  
                 Text('opcion 1', textAlign: TextAlign.center,)
                 )
                ),
  */
                    //),
                    //),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return RawMaterialButton(
      onPressed: () {
        _showModalBottomSheet(context);
      },
      //fillColor: Colors.black,
      //constraints: BoxConstraints(minHeight: 50),
      // elevation: 0,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
