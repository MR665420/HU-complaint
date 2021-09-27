import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/auth_provider.dart';
import 'package:untitled/Screens/Credentials/login_screen.dart';
import 'package:untitled/Screens/On-Boarding/splash_screen.dart';

import 'Screens/Credentials/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers:[
      Provider(create: (_)=>AuthProvider()),
    ],
    child: MyApp(),),
  );

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      routes:{
        SplashScreen.id: (context) => SplashScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        LoginScreen.id:(context) => LoginScreen(),
      },
    );
  }
}





