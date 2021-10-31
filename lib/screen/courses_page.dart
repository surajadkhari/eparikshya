import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:eparikshya/sections/course_card_section/course_content_videocard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course_detailpage.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 10),
          child: Text('Courses',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Container(
            child: TextformfieldWidget(),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: SizedBox(
            height: 390,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: CoursevideoModel.courseVideocard.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CourseDetail()));
                    },
                    child: Container(
                      height: 110,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                _courseImage(index),
                                _courseViewcount()
                              ],
                            ),
                          ),
                          _courseInfo(index)
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    ));
  }

  Expanded _courseInfo(int index) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CoursevideoModel.courseVideocard[index].tile,
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 13),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.timelapse,
                size: 18,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Text(CoursevideoModel.courseVideocard[index].time,
                  style: GoogleFonts.poppins(fontSize: 11)),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.star,
                size: 18,
              ),
              SizedBox(
                width: 8,
              ),
              Text(CoursevideoModel.courseVideocard[index].ratingvalue,
                  style: GoogleFonts.poppins()),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            CoursevideoModel.courseVideocard[index].instructor,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.black, fontSize: 12)),
          )
        ],
      ),
    ));
  }

  Container _courseViewcount() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: EdgeInsets.only(
        top: 81,
        left: 8,
      ),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
      child: Text(
        '47.1l Views',
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Container _courseImage(int index) {
    return Container(
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.cover,
            image:
                NetworkImage(CoursevideoModel.courseVideocard[index].videoimg),
          )),
    );
  }

  TextField TextformfieldWidget() {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: "Enter your query here",
          hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13)),
          prefixIcon: Icon(
            Icons.search,
            size: 16,
          )),
    );
  }
}
