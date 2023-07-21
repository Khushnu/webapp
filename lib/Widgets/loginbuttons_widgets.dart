import 'package:flutter/material.dart';
import 'package:webapp/main.dart';

class LoginButtonsWidget extends StatefulWidget {
  const LoginButtonsWidget({super.key, required this.image, required this.height, required this.width});
  final String image; 
  final double height; 
  final double width;

  @override
  State<LoginButtonsWidget> createState() => _LoginButtonsWidgetState();
}

class _LoginButtonsWidgetState extends State<LoginButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height; 
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
            height: widget.height,
            width: widget.width ,
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(15)),
            child: Image.asset(widget.image, ),
          );
  }
}