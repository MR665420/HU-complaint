
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/widgets/custom_button_row.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  var _emailTextController = TextEditingController();
  var _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Flexible(
                  child: Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, WelcomeScreen.id);
                          },
                          icon: Icon(Icons.keyboard_backspace),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Make Your Schedule',
                        style: GoogleFonts.nunito(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sign In to Continue',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xFFCB4444),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: GoogleFonts.nunito(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: _emailTextController,
                        autofocus: true,
                        style: GoogleFonts.poppins(fontSize: 16),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCB4444),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "pangcheo1210@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Password',
                        style: GoogleFonts.nunito(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: _passwordTextController,
                        obscureText: true,
                        autofocus: true,
                        style: GoogleFonts.poppins(fontSize: 16),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFCB4444),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              /*Navigator.pushNamed(
                                  context, RecoverPassword.id);*/
                            },
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              child: Text('Forgot password?',style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.bold,color: Color(0xFFA13636),),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomButtonRows(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
