import 'package:carousel_slider/carousel_slider.dart';
import 'package:eparikshya/model/course_model.dart';

import 'package:eparikshya/sections/carousel_section/carousel_slider.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text(
      //     "Eparikshya",
      //     style: GoogleFonts.poppins(),
      //   ),
      //   leading: Icon(Icons.menu),
      // ),
      body: ListView(
        children: [
          Carousel(),
          SizedBox(
            height: 265,
            //345
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Courses.course.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: CourseCard(
                      index: index,
                    ),
                    margin: EdgeInsets.only(top: 8.0, left: 8.0),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
