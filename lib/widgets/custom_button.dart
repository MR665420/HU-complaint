import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/Credentials/login_screen.dart';

class CustomButtonColumn extends StatefulWidget {
  const CustomButtonColumn({Key? key}) : super(key: key);

  @override
  _CustomButtonColumnState createState() => _CustomButtonColumnState();
}

class _CustomButtonColumnState extends State<CustomButtonColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
        },
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
            color: Color(0xff16F701),
            borderRadius: BorderRadius.circular(
              6.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Log In',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
