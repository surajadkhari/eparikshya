import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/screen/homepage.dart';
import 'package:flutter/material.dart';

import '../course_card_instruction_section.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,required this.index
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.network(
              Courses.course[0].course_img,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              Courses.course[0].course_name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          const Divider(
            thickness: 2,
            indent: 40.0,
            endIndent: 40.0,
          ),
          instructor(index: 0)
        ],
      ),
    );
  }
}
