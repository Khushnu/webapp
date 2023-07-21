import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({super.key, required this.hintText, required this.icon});
  final String hintText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(17.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    prefixIcon: icon,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    ), 
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey
                      )
                    )
                  ),
                ),
              );
  }
}