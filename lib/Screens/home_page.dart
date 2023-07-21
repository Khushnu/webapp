import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webapp/Screens/responsiveness.dart';
import 'package:webapp/Widgets/inputtext_widget.dart';
import 'package:webapp/Widgets/labeltext_widget.dart';
import 'package:webapp/Widgets/loginbuttons_widgets.dart';
import 'package:webapp/Widgets/signinbutton_widget.dart';
import 'package:webapp/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsiveness.isSmallScreen(context)
            ? BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  height: screenHeight,
                  width: screenWidth,
                  color: Colors.blue.withOpacity(0.5),
                  padding: const EdgeInsets.only(
                      left: 85, right: 85, top: 60, bottom: 60),
                  child: Container(
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.2 - 20,
                            child: Image.asset('images/logo.png'),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const LabelTextWidget(
                              title: 'Welcome Back',
                              size: 18,
                              fontWeight: FontWeight.bold),
                          const LabelTextWidget(
                              title: 'Please Enter Your Details to Login',
                              size: 15,
                              fontWeight: FontWeight.normal),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LoginButtonsWidget(
                                image: 'images/apple.png',
                                height: screenHeight * 0.1 - 30,
                                width: screenWidth * 0.2 - 10,
                              ),
                              LoginButtonsWidget(
                                  image: 'images/google.png',
                                  height: screenHeight * 0.1 - 30,
                                  width: screenWidth * 0.2 - 10),
                              LoginButtonsWidget(
                                  image: 'images/twitter.jpeg',
                                  height: screenHeight * 0.1 - 30,
                                  width: screenWidth * 0.2 - 10)
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  indent: 20,
                                  endIndent: 20,
                                ),
                              ),
                              LabelTextWidget(
                                  title: 'OR',
                                  size: 14,
                                  fontWeight: FontWeight.normal),
                              Expanded(
                                child: Divider(
                                  indent: 20,
                                  endIndent: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: LabelTextWidget(
                                    title: 'E-Mail Address',
                                    size: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const InputTextWidget(
                            hintText: 'Enter Your Email',
                            icon: Icon(Icons.email),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: LabelTextWidget(
                                    title: 'Password',
                                    size: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const InputTextWidget(
                            hintText: 'Enter Your Password',
                            icon: Icon(Icons.lock),
                          ),
                          const SignInButtonWidget()
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Responsiveness.isMediumScreen(context)
                ? BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                    child: Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.blue.withOpacity(0.5),
                      padding: const EdgeInsets.only(
                          left: 85, right: 85, top: 60, bottom: 60),
                      child: Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.2 - 20,
                                child: Image.asset('images/logo.png'),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const LabelTextWidget(
                                  title: 'Welcome Back',
                                  size: 18,
                                  fontWeight: FontWeight.bold),
                              const LabelTextWidget(
                                  title: 'Please Enter Your Details to Login',
                                  size: 15,
                                  fontWeight: FontWeight.normal),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  LoginButtonsWidget(
                                      image: 'images/apple.png',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 50),
                                  LoginButtonsWidget(
                                      image: 'images/google.png',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 50),
                                  LoginButtonsWidget(
                                      image: 'images/twitter.jpeg',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 50)
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                  ),
                                  LabelTextWidget(
                                      title: 'OR',
                                      size: 14,
                                      fontWeight: FontWeight.normal),
                                  Expanded(
                                    child: Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: LabelTextWidget(
                                        title: 'E-Mail Address',
                                        size: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const InputTextWidget(
                                hintText: 'Enter Your Email',
                                icon: Icon(Icons.email),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: LabelTextWidget(
                                        title: 'Password',
                                        size: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const InputTextWidget(
                                hintText: 'Enter Your Password',
                                icon: Icon(Icons.lock),
                              ),
                              const SignInButtonWidget()
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                    child: Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.blue.withOpacity(0.5),
                      padding: const EdgeInsets.only(
                          left: 85, right: 85, top: 60, bottom: 60),
                      child: Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.2 - 20,
                                child: Image.asset('images/logo.png'),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const LabelTextWidget(
                                  title: 'Welcome Back',
                                  size: 18,
                                  fontWeight: FontWeight.bold),
                              const LabelTextWidget(
                                  title: 'Please Enter Your Details to Login',
                                  size: 15,
                                  fontWeight: FontWeight.normal),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  LoginButtonsWidget(
                                      image: 'images/apple.png',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 40),
                                  LoginButtonsWidget(
                                      image: 'images/google.png',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 40),
                                  LoginButtonsWidget(
                                      image: 'images/twitter.jpeg',
                                      height: screenHeight * 0.1 - 30,
                                      width: screenWidth * 0.3 - 40)
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                  ),
                                  LabelTextWidget(
                                      title: 'OR',
                                      size: 14,
                                      fontWeight: FontWeight.normal),
                                  Expanded(
                                    child: Divider(
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: LabelTextWidget(
                                        title: 'E-Mail Address',
                                        size: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const InputTextWidget(
                                hintText: 'Enter Your Email',
                                icon: Icon(Icons.email),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: LabelTextWidget(
                                        title: 'Password',
                                        size: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const InputTextWidget(
                                hintText: 'Enter Your Password',
                                icon: Icon(Icons.lock),
                              ),
                              const SignInButtonWidget()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
  }
}
