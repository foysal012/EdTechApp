import 'package:edtech_app/authentication/signin_page_screen.dart';
import 'package:edtech_app/authentication/signup_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  PageController pageController = PageController();

  int currentIndex = 0;

  final List<Widget> pages = [
    Center(
      child: Text(
        'Education is the Backbone of a Nation',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
    Center(
      child: Text(
        '“Education is one thing no one can take away from you.” —Elin Nordegren',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
    Center(
      child: Text(
        '“Education’s purpose is to replace an empty mind with an open one.“ – Malcolm Forbes',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
    Center(
      child: Text(
        '“Teachers open the door, but you must enter by yourself” – Chinese Proverb',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
    Center(
      child: Text(
        '“You learn something every day if you pay attention.” – Ray LeBlond ',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
    Center(
      child: Text(
        '“If you think education is expensive, try ignorance.” – Jeff Rich',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    ),
  ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: height * 0.1,
            ),

            Text("HomePage",
            style: GoogleFonts.oswald(
              color: Colors.black,
              fontSize: 30,
              letterSpacing: 7,
            ),
            ),

            SizedBox(
              height: height * 0.1,
            ),

            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                color: Colors.teal.withOpacity(0.4)
              ),
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  }
                  );
                },

                children: pages,
              ),
            ),

            SizedBox(
              height: height * 0.2,
            ),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninPageScreen()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 65,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(25),
                          ),
                          color: Colors.white
                      ),
                    ),

                    Positioned(
                        child: Container(
                          height: 65,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(25),
                              ),
                              color: Color(0xff4AA4D6),
                          ),
                        )
                    ),

                    Positioned(
                      left: 16,
                        child: Text("Sign in",
                          style: GoogleFonts.ephesis(
                            fontSize: 45,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    )
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.02,
              ),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPageScreen()));
                },
                child: Stack(
                  children: [
                    Container(
                      height: 65,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(25),
                          ),
                          color: Colors.white
                      ),
                    ),

                    Positioned(
                        child: Container(
                          height: 65,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(25),
                              ),
                              color: Color(0xff4AA4D6),
                          ),
                        )
                    ),

                    Positioned(
                      left: 16,
                        child: Text("Sign up",
                          style: GoogleFonts.ephesis(
                            fontSize: 45,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    )
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
