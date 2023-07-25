
import 'package:flutter/material.dart';
import 'package:webapp/pallete.dart';

class TextinputWidger extends StatelessWidget {
  const TextinputWidger({
    super.key, required this.label,
  });

  final String label; 
  

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 380),
      child: TextFormField(   
        decoration:  InputDecoration(
          constraints: BoxConstraints(maxHeight: 80),
          //contentPadding: EdgeInsets.all(16),
          hintText: label, 
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Pallete.borderColor, 
              width: 3
            )
          ), 
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Pallete.gradient2, 
              width: 3
            )
          ), 
        ),
      ),
    );
  }
}




