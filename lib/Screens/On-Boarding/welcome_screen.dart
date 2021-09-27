import 'package:flutter/material.dart';
import 'package:untitled/Screens/On-Boarding/landing_screen.dart';
import 'package:untitled/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome-screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: LandingScreen(),
          ),
          //Buttons at the bottom
          CustomButtonColumn(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}