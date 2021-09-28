import 'package:flutter/material.dart';

class ButtonOfNumber extends StatelessWidget {

  // const ButtonOfNumber({ Key? key }) : super(key: key);
  final String number;
  final double elevationSize;
  const ButtonOfNumber(this.number, this.elevationSize);

  // @Override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: (){},
        child: Text(number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        color: Colors.amber[100],
        height: 75.0,
        elevation: elevationSize ?? 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blue)
        ),
    );
  }

}