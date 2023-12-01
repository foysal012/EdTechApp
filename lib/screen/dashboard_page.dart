import 'package:edtech_app/authentication/auth_services.dart';
import 'package:edtech_app/model/course_module_model_class.dart';
import 'package:edtech_app/screen/course_player_page_screen.dart';
import 'package:edtech_app/screen/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashBoardPageScreen extends StatefulWidget {
  const DashBoardPageScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardPageScreen> createState() => _DashBoardPageScreenState();
}

class _DashBoardPageScreenState extends State<DashBoardPageScreen> {

  void signOut() async{
    final authServices = Provider.of<AuthServices>(context, listen: false);

    try{
      authServices.signOut().then((value) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageScreen()));
      });
    } catch(e){
      print(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }

  var data = CourseModuleModelClass.generatedCourseModuleList;

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
          children: [

            SizedBox(
              height: height * 0.05,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text("DashBoard",
                  style: GoogleFonts.oswald(
                    color: Colors.black,
                    fontSize: 30,
                    letterSpacing: 7,
                  ),
                ),
                
                InkWell(
                  onTap: (){
                    signOut();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Signout successfully...")));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff4AA4D6),
                    ),
                    child: Icon(Icons.logout,color: Colors.black,size: 30,),
                  ),
                )
              ],
            ),

            SizedBox(
              height: height * 0.1,
            ),

            Expanded(
                child:ListView.separated(
                    itemBuilder: (context, index){
                      return ListTile(

                        leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("${data[index].courseImage}"))
                          ),
                        ),

                        title: Text("${data[index].courseTitle}"),

                        trailing: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CoursePlayerPageScreen(
                                courseModuleModelClass: data[index] )));
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff4AA4D6),
                            ),
                            child: Center(
                              child: Text("Continue Course",
                              style: TextStyle(
                              ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index){
                      return SizedBox(
                        height: height * 0.02,
                      );
                    },
                    itemCount: data.length,
                )
            )

          ],
        ),
      ),
    );
  }
}
