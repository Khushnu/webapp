import 'package:flutter/material.dart';

import '../main.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: screenHeight * 0.1 - 30, 
                  width: screenWidth ,
                  decoration: BoxDecoration(
                    color: Colors.black, 
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: Text('SignIn' , style: TextStyle(color: Colors.white),),),
                ),
              );
  }
}