import 'dart:async';

import 'package:edtech_app/authentication/auth_gate.dart';
import 'package:edtech_app/authentication/signin_page_screen.dart';
import 'package:edtech_app/screen/homepage_screen.dart';
import 'package:edtech_app/widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(
            seconds: 3),
            () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AuthGate()));
            }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: height * 0.2),

            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("images/w1.png"),fit: BoxFit.cover)
              ),
            ),

            SizedBox(height: height * 0.03),

            Text("Edtech",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff4AA4D6),
              fontSize: 28
            ),
            ),

            SizedBox(height: height * 0.1),



          SpinKitFadingCircle(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ?
                  //Colors.red :
                  Colors.red :
                  //Colors.green,
                  Color(0xff4AA4D6),
                ),
              );
            },
          ),


            SizedBox(height: height * 0.05),

            Text("Design & Developed By",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4AA4D6),
                    fontSize: 16
                )
            ),
            Text("Foysal Joarder",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4AA4D6),
                    fontSize: 25
                )
            )
          ],
        ),
      ),
    );
  }
}