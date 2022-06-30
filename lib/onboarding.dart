//import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:task1/login.dart';
import 'package:task1/onboarding_content.dart';
import 'package:task1/customButton.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemCount: content.length,
                itemBuilder: (_, i) {
                  return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text("7Krave",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30, color: Colors.blueAccent)),
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            content[i].image,
                            height: 350,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            content[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            content[i].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ));
                }),
          ),
          Container(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    content.length,
                    (int index) => buildDots(index, context),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  //height: 10,
                  //padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20, left: 20),
                  width: double.infinity,
                  child: CustomButton(
                    colour: Theme.of(context).primaryColor,
                    imageExist: 0,
                    textColor: Colors.white,
                    //buttonIcon: 'images/google-logo-9808.png',
                    title: 'Get started',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    borderExist: 0,
                  )),
              Container(
                  //height: 10,
                  padding: const EdgeInsets.only(bottom: 20, left: 20),
                  //margin: EdgeInsets.all(5),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Sign up",
                        style: const TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
            ],
          )),
        ],
      ),
    );
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentPage == index ? 20 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),
    );
  }
}
