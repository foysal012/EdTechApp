import 'package:edtech_app/authentication/signin_page_screen.dart';
import 'package:edtech_app/screen/dashboard_page.dart';
import 'package:edtech_app/screen/homepage_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return DashBoardPageScreen();
          } else {
            return HomePageScreen();
          }
        },
      ),
    );
  }
}
