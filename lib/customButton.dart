import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.colour,
      required this.title,
      required this.onPressed,
      this.buttonIcon,
      required this.imageExist,
      required this.textColor,
      required this.borderExist,
      this.borderColor});

  final Color colour;
  final String title;
  Color textColor;
  final VoidCallback onPressed;
  String? buttonIcon;
  int imageExist;
  int borderExist;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
        child: Align(
          //color: Colors.green,
          alignment: Alignment.center,

          child: MaterialButton(
            onPressed: onPressed,
            shape: borderWidget(borderExist),
            height: 55.0,
            child: Row(
              children: [
                imageWidget(imageExist),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.center,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageWidget(int isImage) {
    if (isImage == 0) {
      return Container();
    }
    return Image.asset(
      buttonIcon!,
      width: 30,
      height: 30,
    );
  }

  ShapeBorder borderWidget(int borderFound) {
    if (borderFound == 0) {
      return RoundedRectangleBorder();
    }
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: borderColor!),
    );
  }
}
