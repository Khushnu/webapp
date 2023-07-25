// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webapp/pallete.dart';

class SocialButtonsWidget extends StatelessWidget {
  const SocialButtonsWidget({super.key, required this.iconPath, required this.label, this.horizontalPadding = 100});
  final String iconPath; 
  final String label;
  final double horizontalPadding ;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(onPressed: (){},
    icon:  SvgPicture.asset(iconPath, 
    width: 25,
    color: Pallete.whiteColor,),
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20),
      shape: RoundedRectangleBorder(
        
        side: const BorderSide(color: Pallete.borderColor), 
        borderRadius: BorderRadius.circular(10)
      )
    ),
    label: Text(label, style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),), 
      );
  }
}