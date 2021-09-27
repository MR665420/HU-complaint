

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class AuthProvider extends ChangeNotifier{
  File? image;
  String pickerError='';
  bool isPicAvail = false;
  String email ='';
  String error = '';

  Future<File?> getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 20);
    if (pickedFile != null) {
      this.image = File(pickedFile.path);
      notifyListeners();
    } else {
      this.pickerError='No image selected';
      print('No image selected.');
      notifyListeners();
    }
    return this.image;
  }

  //register user to database
  Future<UserCredential?> registerStudent(email,password)async{
    this.email=email;
    notifyListeners();
    UserCredential? userCredential;
    try {
      userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        this.error='The password provided is too weak.';
        notifyListeners();
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        this.error='The account already exists for that email.';
        notifyListeners();
        print('The account already exists for that email.');
      }
    } catch (e) {
      this.error=e.toString();
      notifyListeners();
      print(e);
    }
    return userCredential;
  }

  //login vendor
  Future<UserCredential?> loginVendor(email,password)async{
    this.email=email;
    notifyListeners();
    UserCredential? userCredential;
    try {
      userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return userCredential;
  }

  //reset password
  Future<UserCredential?> resetPassword(email)async{
    this.email=email;
    notifyListeners();
    UserCredential? userCredential;
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return userCredential;
  }

}