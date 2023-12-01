import 'package:edtech_app/authentication/auth_services.dart';
import 'package:edtech_app/authentication/signup_page_screen.dart';
import 'package:edtech_app/screen/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninPageScreen extends StatefulWidget {
  const SigninPageScreen({Key? key}) : super(key: key);

  @override
  State<SigninPageScreen> createState() => _SigninPageScreenState();
}

class _SigninPageScreenState extends State<SigninPageScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obsecureText = true;

  void signIn() async{
      final firebaseAuth = Provider.of<AuthServices>(context, listen: false);

      try{
          firebaseAuth.signInWithEmailAndPassword(
          emailController.text.toString(),
          passwordController.text.toString(),
          ).then((value){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully login")));
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashBoardPageScreen()));
          }).onError((error, stackTrace) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
          });

      } catch (e){
        print(e.toString());
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.toString()}")));
      }
  }
  
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: height * 0.1,),

              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //image: DecorationImage(image: AssetImage("images/w1.png"),fit: BoxFit.cover)
                        color: Color(0xff4AA4D6)
                    ),
                  ),
                  Positioned(
                    top: 85,
                      right: 70,
                      child: Text("Sign in",
                      style: GoogleFonts.ephesis(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                  )
                ],
              ),

              SizedBox(height: height * 0.1,),

              TextFormField(
                controller: emailController,

                decoration: InputDecoration(
                  hintText: "example420@gmail.com",
                  prefixIcon: Icon(Icons.alternate_email, color: Color(0xff4AA4D6),),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff4AA4D6),
                      width: 3,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff4AA4D6),
                      width: 3,
                    ),
                  ),

                ),
              ),

              SizedBox(height: height * 0.03,),

              TextFormField(
                controller: passwordController,
                obscureText: obsecureText,

                decoration: InputDecoration(
                  hintText: "***************",
                  prefixIcon: Icon(Icons.lock_open_outlined, color: Color(0xff4AA4D6),),

                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      icon: Icon(obsecureText == true ? Icons.visibility_off : Icons.visibility)
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff4AA4D6),
                      width: 3,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xff4AA4D6),
                      width: 3,
                    ),
                  ),

                ),
              ),

              SizedBox(height: height * 0.015,),

              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){

                  },
                  child: Text("Fogot password?",
                    style: TextStyle(
                      color: Color(0xff4AA4D6),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.03,),

              InkWell(
                onTap: (){
                  signIn();
                 // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully login")));
                },
                child: Container(
                  height: 55,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4AA4D6),
                  ),
                    child: Center(
                        child: Text("Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                        )
                    )
                  ,
              )
              ),

              SizedBox(height: height * 0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),

                  SizedBox(width: width * 0.02,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPageScreen()));
                    },
                    child: Text("Sign up",
                    style: TextStyle(
                      color: Color(0xff4AA4D6),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
