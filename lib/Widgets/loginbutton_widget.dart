import 'package:flutter/material.dart';
import 'package:webapp/pallete.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
       
        gradient: const LinearGradient(colors: 
        [Pallete.gradient1,
         Pallete.gradient2,
          Pallete.gradient3], 
          begin: Alignment.bottomLeft , 
          end: Alignment.topRight
        )
      ),
      child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              fixedSize: Size(380, 50)
            ),
             child: Text('SignIn', 
                style: TextStyle(color: Pallete.whiteColor, fontSize: 16, fontWeight: FontWeight.bold),)
                ),
    );
  }
}