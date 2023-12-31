import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webapp/Screens/call_page.dart';
import 'package:webapp/Screens/favorite_page.dart';
import 'package:webapp/firebase_options.dart';
import 'package:webapp/pallete.dart';


import 'Screens/delete_page.dart';
import 'Screens/home_page.dart';

void main()   {
  WidgetsFlutterBinding.ensureInitialized; 

  if(kIsWeb){
     Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: DefaultFirebaseOptions.web.apiKey,
        appId: DefaultFirebaseOptions.web.appId, 
        messagingSenderId: DefaultFirebaseOptions.web.messagingSenderId, 
        projectId: DefaultFirebaseOptions.web
        .projectId)
    );
  } else { 
     Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


double screenHeight = 0; 
double screenWidth = 0; 

class _MyAppState extends State<MyApp> {


  int currentIndex = 0;


  List<Widget> item = [ 
    const HomePage(),
    const FavoritePage(), 
    const CallPage(), 
    const DeletePage()

  ];
  
  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height; 
    screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor
      ),
      home: const HomePage(),
      // home: Scaffold(
        
      //   body: IndexedStack(index: currentIndex,children: item,), 
      //    bottomNavigationBar: BottomNavigationBar(
      //          onTap: (index){
      //     setState(() {
      //       currentIndex = index;
      //     });
      //          },
      //          currentIndex: currentIndex, 
      //          backgroundColor: Colors.black,
      //          items:  [
      //     BottomNavigationBarItem(icon:  const Icon(Icons.home), label: 'Home', backgroundColor: Colors.red.shade300), 
      //      BottomNavigationBarItem(icon:  const Icon(Icons.favorite), label: 'Favorite', backgroundColor: Colors.indigo.shade300), 
      //       BottomNavigationBarItem(icon:  const Icon(Icons.call), label: 'call', backgroundColor: Colors.teal.shade300), 
      //        BottomNavigationBarItem(icon:  const Icon(Icons.delete), label: 'Delete' ,backgroundColor: Colors.purple.shade300)
      //     ]),
      // ),
    );
  }
}
