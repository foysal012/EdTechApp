import 'package:edtech_app/authentication/auth_services.dart';
import 'package:edtech_app/authentication/signup_page_screen.dart';
import 'package:edtech_app/firebase_options.dart';
import 'package:edtech_app/screen/dashboard_page.dart';
import 'package:edtech_app/screen/homepage_screen.dart';
import 'package:edtech_app/spalash%20screen/spalash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthServices()),
        ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      //home: SignupPageScreen()
      //home: HomePageScreen(),
      //home: DashBoardPageScreen(),
    ),
    );
  }
}

