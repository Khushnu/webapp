
import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key, required this.smallScreen, required this.mediumScreen, required this.largeScreen});
  final Widget? smallScreen; 
  final Widget? mediumScreen; 
  final Widget largeScreen;

static bool isSmallScreen(BuildContext context){
  return MediaQuery.of(context).size.width < 800; 
}

static bool isMediumScreen(BuildContext context){
  return MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width <= 1200;
} 

static bool isLargeScreen(BuildContext context){
  return MediaQuery.of(context).size.width > 1200; 
}

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint){
      if(constraint.maxWidth > 1200){
        return largeScreen; 
      } else if (constraint.maxWidth >= 800 && constraint.maxWidth <= 1200 ){
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}