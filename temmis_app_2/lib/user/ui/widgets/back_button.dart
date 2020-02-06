import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  
  
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    final img_button = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/espalda.svg"))
      ),
    );


    return Container(    
      child: InkWell(
        child: GestureDetector(
          onTap: () {
            img_button;
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
