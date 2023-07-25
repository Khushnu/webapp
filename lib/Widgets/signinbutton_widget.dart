import 'package:flutter/material.dart';



class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40, 
                  width: 380 ,
                  decoration: BoxDecoration(
                    color: Colors.black, 
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: Text('SignIn' , style: TextStyle(color: Colors.white),),),
                ),
              );
  }
}