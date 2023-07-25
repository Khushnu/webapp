
import 'package:flutter/material.dart';
import 'package:webapp/Widgets/loginbutton_widget.dart';
import 'package:webapp/Widgets/socialbuttons.dart';
import 'package:webapp/Widgets/textinput_widget.dart';
import 'package:webapp/pallete.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
             Image.asset('images/signin_balls.png'), 
             const SizedBox(height: 40,), 
            const  Text('SignIn', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),), 
            const SizedBox(height: 20,), 
           const SocialButtonsWidget(iconPath: 'images/svg/g_logo.svg', label: 'Login with google'), 
           const SizedBox(
            height: 15,
           ),
           const SocialButtonsWidget(iconPath: 'images/svg/f_logo.svg', label: 'Login with facebook', horizontalPadding: 91,), 
           const SizedBox(height: 15,), 
           const Text('or', style: TextStyle(color: Pallete.whiteColor, fontWeight: FontWeight.bold, fontSize: 20),), 
            const SizedBox(height: 15,),
           const TextinputWidger(label: 'Email'), 
           const SizedBox(height: 20,) , 
           const TextinputWidger(label: 'Password'), 
            const SizedBox(height: 25,), 
            const LoginButton(), 
            const SizedBox(height: 15,), 
             RichText(text: TextSpan(
              text: r"Don't have an account? ",
             style: TextStyle(color: Colors.white),
             children: [TextSpan(
              text: "Create account",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
             )])
             ), 
             const SizedBox(height: 6,), 
              Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.bold),), 
            ],
          ),
        ),
      ),
    );
  }
}


























// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:webapp/Screens/responsiveness.dart';
// import 'package:webapp/Widgets/inputtext_widget.dart';
// import 'package:webapp/Widgets/labeltext_widget.dart';
// import 'package:webapp/Widgets/loginbuttons_widgets.dart';
// import 'package:webapp/Widgets/signinbutton_widget.dart';
// import 'package:webapp/main.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     //screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.blue.withOpacity(0.5),
//         body: Responsiveness(
//           smallScreen: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
//                 child: Container(
//                  height: screenHeight,
//                  width: screenWidth,
//                   color: Colors.blue.withOpacity(0.5),
//                   padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
//                   child: Container(
//                     height: 400,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(14.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: screenHeight * 0.2 - 20,
//                             child: Image.asset('images/logo.png'),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           const LabelTextWidget(
//                               title: 'Welcome Back',
//                               size: 18,
//                               fontWeight: FontWeight.bold),
//                           const LabelTextWidget(
//                               title: 'Please Enter Your Details to Login',
//                               size: 15,
//                               fontWeight: FontWeight.normal),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                         const  Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Expanded(
//                                 child: LoginButtonsWidget(
//                                   image: 'images/apple.png',
//                                   height: 50,
//                                   width: 115,
//                                 ),
                                
//                               ),
//                               SizedBox(width: 3,), 
//                               Expanded(
//                                 child: LoginButtonsWidget(
//                                     image: 'images/google.png',
//                                       height: 50,
//                                   width: 115, ),
//                               ),
//                                SizedBox(width: 3,), 
//                               Expanded(
//                                 child: LoginButtonsWidget(
//                                     image: 'images/twitter.jpeg',
//                                     height: 50,
//                                   width: 115,),
//                               )
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                               LabelTextWidget(
//                                   title: 'OR',
//                                   size: 14,
//                                   fontWeight: FontWeight.normal),
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'E-Mail Address',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Email',
//                             icon: Icon(Icons.email),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'Password',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Password',
//                             icon: Icon(Icons.lock),
//                           ),
//                           const SignInButtonWidget()
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ), mediumScreen:BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
//                 child: Container(
//                   height: screenHeight,
//                   width: screenWidth,
//                   color: Colors.blue.withOpacity(0.5),
//                   padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
//                   child: Container(
                    
//                     height: screenHeight * 0.2,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(14.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: screenHeight * 0.2 - 20,
//                             child: Image.asset('images/logo.png'),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           const LabelTextWidget(
//                               title: 'Welcome Back',
//                               size: 18,
//                               fontWeight: FontWeight.bold),
//                           const LabelTextWidget(
//                               title: 'Please Enter Your Details to Login',
//                               size: 15,
//                               fontWeight: FontWeight.normal),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                         const  Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               LoginButtonsWidget(
//                                 image: 'images/apple.png',
//                                 height: 50,
//                                 width: 120,
//                               ),
//                               LoginButtonsWidget(
//                                   image: 'images/google.png',
//                                     height: 50,
//                                 width: 120, ),
//                               LoginButtonsWidget(
//                                   image: 'images/twitter.jpeg',
//                                   height: 50,
//                                 width: 120,)
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                               LabelTextWidget(
//                                   title: 'OR',
//                                   size: 14,
//                                   fontWeight: FontWeight.normal),
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'E-Mail Address',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Email',
//                             icon: Icon(Icons.email),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'Password',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Password',
//                             icon: Icon(Icons.lock),
//                           ),
//                           const SignInButtonWidget()
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ), largeScreen: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
//                 child: Container(
//                   height: screenHeight,
//                   width: screenWidth,
//                   color: Colors.blue.withOpacity(0.5),
//                   padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
//                   child: Container(
                    
//                     height: screenHeight * 0.2,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(14.0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: screenHeight * 0.2 - 20,
//                             child: Image.asset('images/logo.png'),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           const LabelTextWidget(
//                               title: 'Welcome Back',
//                               size: 18,
//                               fontWeight: FontWeight.bold),
//                           const LabelTextWidget(
//                               title: 'Please Enter Your Details to Login',
//                               size: 15,
//                               fontWeight: FontWeight.normal),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                         const  Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               LoginButtonsWidget(
//                                 image: 'images/apple.png',
//                                 height: 50,
//                                 width: 120,
//                               ),
//                               LoginButtonsWidget(
//                                   image: 'images/google.png',
//                                     height: 50,
//                                 width: 120, ),
//                               LoginButtonsWidget(
//                                   image: 'images/twitter.jpeg',
//                                   height: 50,
//                                 width: 120,)
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                               LabelTextWidget(
//                                   title: 'OR',
//                                   size: 14,
//                                   fontWeight: FontWeight.normal),
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                   endIndent: 20,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'E-Mail Address',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Email',
//                             icon: Icon(Icons.email),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 15),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: LabelTextWidget(
//                                     title: 'Password',
//                                     size: 15,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                           const InputTextWidget(
//                             hintText: 'Enter Your Password',
//                             icon: Icon(Icons.lock),
//                           ),
//                           const SignInButtonWidget()
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               )   
        
//     );
//   }
// }
