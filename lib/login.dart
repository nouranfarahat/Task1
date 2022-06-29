import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:task1/button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SvgPicture.asset('images/login_background.svg',
                  fit: BoxFit.fitWidth, height: 320),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  //alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,

                    children: [
                      Text("Welcom to Fashion Daily",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black45)),
                      SizedBox(height: 10,),
                      Text("Sign in",
                          //textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 50)),
                      SizedBox(height: 10,),
                      Text("Phone Number",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54)),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(border: Border.all()),
                        child: CountryCodePicker(initialSelection: 'EG',
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          favorite: ['+20','EG'],
                          enabled: true,
                          showFlag: true,
                          showFlagDialog: false,),


                      ),
                      SizedBox(height: 10,),
                      MainButton(name: 'Sign in', buttonColor: Colors.blue, textColor: Colors.white),
                      SizedBox(height: 10,),

                      Container(
                        alignment: Alignment.center,
                        child: Text("or",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54,fontSize: 20)),
                      ),
                      MainButton(name: 'Sign with by Google', buttonColor: Colors.white, textColor: Colors.black,buttonIcon: Icons.email,)

                      /*TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            border: OutlineInputBorder()),
                      ),*/

                    ],
                  ))
            ],
          )),
    );
  }
}
