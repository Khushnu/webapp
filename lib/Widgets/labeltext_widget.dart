import 'package:flutter/material.dart';

class LabelTextWidget extends StatelessWidget {
  const LabelTextWidget({super.key, required this.title, required this.size, required this.fontWeight});
  final String title; 
  final double size; 
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: Colors.black, fontSize: size, fontWeight: fontWeight),);
  }
}