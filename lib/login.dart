import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task1/register.dart';
import 'package:task1/customButton.dart';

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
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcom to Fashion Daily",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black45)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Sign in",
                          style: TextStyle(color: Colors.black, fontSize: 50)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Phone Number",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(border: Border.all()),
                        child: CountryCodePicker(
                          initialSelection: 'EG',
                          showCountryOnly: false,
                          showOnlyCountryWhenClosed: false,
                          favorite: ['+20', 'EG'],
                          enabled: true,
                          showFlag: true,
                          showFlagDialog: false,
                        ),
                      ),
                      CustomButton(
                        colour: Theme.of(context).primaryColor,
                        imageExist: 0,
                        title: 'Sign in',
                        onPressed: () {},
                        borderExist: 0,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text("or",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 20)),
                      ),
                      CustomButton(
                        colour: Colors.white,
                        imageExist: 1,
                        title: 'Sign with by Google',
                        onPressed: () {},
                        borderExist: 1,
                        textColor: Theme.of(context).primaryColor,
                        borderColor: Theme.of(context).primaryColor,
                        buttonIcon: 'images/google-logo-9808.png',
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Has any account? ",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen()));
                                  },
                                  child: Text(
                                    "Register here",
                                    style: const TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 20),
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "By registering your account, you are agree to our ",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      "terms and conditions",
                                      style: const TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
