import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:eparikshya/sections/course_card_section/course_content_videocard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: Text('Courses',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Container(
            child: TextformfieldWidget(),
          ),
        ),
        SizedBox(
          height: 345,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: CoursevideoModel.courseVideocard.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 120,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5)),
                                color: Colors.red,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'http://eparikshya.com/public/frontend/images/course/cu-4.jpg'),
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            margin: EdgeInsets.only(
                              top: 95,
                              left: 8,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.255)),
                            child: Text(
                              '47.1l Views',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 12),
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Text("Hot to scale up your Business",
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 12))
                          ],
                        ),
                      ))
                    ],
                  ),
                );
              }),
        ),
      ],
    ));
  }

  TextField TextformfieldWidget() {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFFD6D6D6)),
          ),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: "Enter your query here",
          hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13)),
          prefixIcon: Icon(
            Icons.search,
            size: 15,
          )),
    );
  }
}
