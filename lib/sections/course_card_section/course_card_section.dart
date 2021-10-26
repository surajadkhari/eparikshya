import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/screen/selectpgae.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course_card_instruction_section.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      // width: 208,
      // height: 300,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.network(
              Courses.course[index].course_img,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              Courses.course[index].course_name,
              // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              style: GoogleFonts.poppins(
                  textStyle:
                      // TextStyle(fontSize: 14, fontWeight: FontWeight.w600)
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 8),
            child: RatingBar.builder(
              initialRating: 3,
              // itemSize: 12,
              itemSize: 8,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          const Divider(
            thickness: 1.5,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Expanded(child: instructor(index: index))
        ],
      ),
    );
  }
}
