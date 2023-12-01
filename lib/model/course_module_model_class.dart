import 'dart:core';
import 'package:flutter/material.dart';

class CourseModuleModelClass{

  String? courseTitle;
  String? courseImage;
  //List? courseModule;
  CourseModuleClass? courseModuleClass;

  CourseModuleModelClass({this.courseTitle, this.courseImage, this.courseModuleClass});

  static List<CourseModuleModelClass> generatedCourseModuleList = [
    CourseModuleModelClass(
      courseTitle: "Web Development",
      courseImage: "images/w2.jpeg",
      courseModuleClass: CourseModuleClass(
          courseModuleName: [
            "Learn And Explore HTML As A Beginer",
            "Learn And Explore CSS As A Beginer",
            "Git, Sourse Control, GitHub And Hosting",
            "Build A Beautiful And Professional Portfolio Website",
            "Revision/Practice And Conceptual Day 1",
            "Personal Website, Build A Brand New Website",
            "[Bonus] Box Model, Pseudo Class, Position",
            "HTML 5 Semantic Tags, Audio, Video, Table, Form",
            "More CSS, Icon, CSS3 Animation",
          ],
        courseVideoLink: [
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        ],
      )
    ),

    CourseModuleModelClass(
        courseTitle: "Android",
        courseImage: "images/w3.jpeg",
        courseModuleClass: CourseModuleClass(
          courseModuleName: [
            "Learn And Explore HTML As A Beginer",
            "Learn And Explore CSS As A Beginer",
            "Git, Sourse Control, GitHub And Hosting",
            "Build A Beautiful And Professional Portfolio Website",
            "Revision/Practice And Conceptual Day 1",
            "Personal Website, Build A Brand New Website",
            "[Bonus] Box Model, Pseudo Class, Position",
            "HTML 5 Semantic Tags, Audio, Video, Table, Form",
            "More CSS, Icon, CSS3 Animation",
          ],
          courseVideoLink: [
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
          ],
          videoLenght: [
            "10:21",
            "15:11",
            "17:30",
            "32:02",
            "23:29",
            "08:21",
            "21:20",
            "30:19",
            "25:22",
          ],
        )
    ),

    CourseModuleModelClass(
        courseTitle: "UI & UX Design",
        courseImage: "images/w4.png",
        courseModuleClass: CourseModuleClass(
          courseModuleName: [
            "Learn And Explore HTML As A Beginer",
            "Learn And Explore CSS As A Beginer",
            "Git, Sourse Control, GitHub And Hosting",
            "Build A Beautiful And Professional Portfolio Website",
            "Revision/Practice And Conceptual Day 1",
            "Personal Website, Build A Brand New Website",
            "[Bonus] Box Model, Pseudo Class, Position",
            "HTML 5 Semantic Tags, Audio, Video, Table, Form",
            "More CSS, Icon, CSS3 Animation",
          ],
          courseVideoLink: [
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
          ],
        )
    ),

    CourseModuleModelClass(
        courseTitle: "Wrodpress",
        courseImage: "images/w5.jpg",
        courseModuleClass: CourseModuleClass(
          courseModuleName: [
            "Learn And Explore HTML As A Beginer",
            "Learn And Explore CSS As A Beginer",
            "Git, Sourse Control, GitHub And Hosting",
            "Build A Beautiful And Professional Portfolio Website",
            "Revision/Practice And Conceptual Day 1",
            "Personal Website, Build A Brand New Website",
            "[Bonus] Box Model, Pseudo Class, Position",
            "HTML 5 Semantic Tags, Audio, Video, Table, Form",
            "More CSS, Icon, CSS3 Animation",
          ],
          courseVideoLink: [
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
          ],
        )
    ),
  ];
}

class CourseModuleClass{
  List? courseModuleName;
  List? courseVideoLink;
  List? videoLenght;

  CourseModuleClass({this.courseModuleName, this.courseVideoLink, this.videoLenght});

}