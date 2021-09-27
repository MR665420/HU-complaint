

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Providers/auth_provider.dart';
import 'package:untitled/widgets/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register-screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formkey = GlobalKey<FormState>();
  var _usernameTextController = TextEditingController();
  var _emailTextController = TextEditingController();
  var _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _authData = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.keyboard_backspace),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Make Your Account',
                          style: GoogleFonts.nunito(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Sign Up To Continue',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color(0xFFCB4444),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  ShopPicCard(),
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
                          controller: _usernameTextController,
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
                            hintText: "pangcheo1210",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Email ID',
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          controller: _emailTextController,
                          obscureText: true,
                          autofocus: false,
                          style: GoogleFonts.poppins(fontSize: 16),
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
                          autofocus: false,
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
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Re-enter Password',
                          style: GoogleFonts.nunito(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          obscureText: true,
                          autofocus: false,
                          style: GoogleFonts.poppins(fontSize: 16),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCB4444),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Re-enter your password",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){
                            if(_authData.isPicAvail==true){
                              if(_formkey.currentState!.validate()){

                              }
                            }
                          },
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
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
                                  'Sign Up',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
