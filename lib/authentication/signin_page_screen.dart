import 'package:flutter/material.dart';

class SigninPageScreen extends StatefulWidget {
  const SigninPageScreen({Key? key}) : super(key: key);

  @override
  State<SigninPageScreen> createState() => _SigninPageScreenState();
}

class _SigninPageScreenState extends State<SigninPageScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obsecureText = true;
  
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

              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //image: DecorationImage(image: AssetImage("images/w1.png"),fit: BoxFit.cover)
                  color: Color(0xff4AA4D6)
                ),
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

              SizedBox(height: height * 0.05,),

              InkWell(
                onTap: (){},
                child: Container(
                  height: 55,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4AA4D6),
                  ),
                    child: Center(
                        child: Text("Login",
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


            ],
          ),
        ),
      ),
    );
  }
}
