import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: GestureDetector(
        onTap: () {
          Image.asset("assets/img/espalda.svg");
          Navigator.pop(context);
        },
      ),
    );
  }
}
