import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices with ChangeNotifier{

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //user create
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async{

    try{

      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  //user login
 Future<UserCredential> signInWithEmailAndPassword(String email, String password) async{

   try{

     UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
         email: email,
         password: password
     );

     return userCredential;
   }on FirebaseAuthException catch(e){
     throw Exception(e.code);
   }
 }

 //user logout
 Future<void> signOut() async{
    await firebaseAuth.signOut();
 }

}