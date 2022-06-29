import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1/login.dart';


class MainButton extends StatelessWidget {
  String name;
  Color buttonColor;
  Color textColor;
  IconData? buttonIcon;
  Color? border;

  MainButton(
      {required this.name,
      required this.buttonColor,
      required this.textColor,
      this.buttonIcon,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: RaisedButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          },
          icon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(buttonIcon),
          ),
          label: Text(
            name,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
          color: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
              side: BorderSide(color: Colors.blue)),
        ));
  }
}
