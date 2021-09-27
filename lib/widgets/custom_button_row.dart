
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/On-Boarding/home_screen.dart';
import 'package:untitled/Screens/Credentials/register_screen.dart';

class CustomButtonRows extends StatefulWidget {

  const CustomButtonRows({Key? key}) : super(key: key);

  @override
  _CustomButtonRowsState createState() => _CustomButtonRowsState();
}

class _CustomButtonRowsState extends State<CustomButtonRows> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF232323),
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
                  'Register',
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFCB4444),

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
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
