import 'package:edtech_app/model/course_module_model_class.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class CoursePlayerPageScreen extends StatefulWidget {
   CoursePlayerPageScreen({Key? key,  this.courseModuleModelClass}) : super(key: key);

  CourseModuleModelClass? courseModuleModelClass;

  @override
  State<CoursePlayerPageScreen> createState() => _CoursePlayerPageScreenState();
}

class _CoursePlayerPageScreenState extends State<CoursePlayerPageScreen> {


FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));


  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Text("Course Player Page Screen",
              style: GoogleFonts.oswald(
                color: Colors.black,
                fontSize: 22,
                letterSpacing: 5,
              ),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            
            FlickVideoPlayer(
              flickManager: flickManager,
            ),

            SizedBox(
              height: height * 0.02,
            ),

            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    reverse: false,
                    itemBuilder: (context, index){
                      return ListTile(
                       // leading: Text("${int.parse(widget.courseModuleModelClass?.courseModuleClass?.courseModuleName?[index])}"),
                        title: Text("${widget.courseModuleModelClass!.courseModuleClass!.courseModuleName![index]}"),
                        //subtitle: Text("${widget.courseModuleModelClass?.courseModuleClass?.videoLenght?[index]}"),
                        trailing: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.play_arrow, color: Colors.black,size: 35,)
                        ),
                      );
                    },
                    separatorBuilder: (_, index){
                      return SizedBox(height: height * 0.01,);
                    },
                    itemCount: widget.courseModuleModelClass!.courseModuleClass!.courseModuleName!.length,
                )

            )
            
          ],
        ),
      ),

    );
  }
}
