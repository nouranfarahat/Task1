import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:task1/login.dart';
import 'package:task1/customButton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width,
          //color: Colors.red,
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  'images/login_background.svg',
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  //alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcom to Fashion Daily",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black45)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Register",
                          //textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 50)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Email",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              hintText: 'Eg. examle@email.com')),
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
                      SizedBox(
                        height: 10,
                      ),
                      Text("Password",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              hintText: 'Password')),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        colour: Theme.of(context).primaryColor,
                        imageExist: 0,
                        //buttonIcon: 'images/google-logo-9808.png',
                        title: 'Register',
                        onPressed: () {}, borderExist: 0,
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
                        //height: 10,
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        //margin: EdgeInsets.all(5),
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
                                                LoginScreen()));
                                  },
                                  child: Text(
                                    "Sign in here",
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
                              height: 20,
                            ),
                            Container(
                                //height: 10,
                                padding:
                                    const EdgeInsets.only(bottom: 20, left: 20),
                                //margin: EdgeInsets.all(5),
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
                                    //SizedBox(width: 150,),
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
