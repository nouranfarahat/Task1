import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/login.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:task1/onbording.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
/*class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: CountryCodePicker(initialSelection: 'EG',
          showCountryOnly: false,
          showOnlyCountryWhenClosed: false,
          favorite: ['+20','EG'],
          enabled: true,
          showFlagDialog: false,),

      ),
    );
  }

}*/