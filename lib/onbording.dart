import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:task1/button.dart';
import 'package:task1/login.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              alignment: Alignment.center,
              child: SvgPicture.asset('images/Track and field-rafiki.svg'),
            ),
            Container(
                padding: const EdgeInsets.all(10.0),
                child: MainButton(
                    name: 'Go to Sign in',
                    buttonColor: Colors.blue,
                    textColor: Colors.white))
          ],
        ));
  }
}
