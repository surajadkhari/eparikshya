import 'package:eparikshya/model/course_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class instructor extends StatelessWidget {
  const instructor({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(
            maxRadius: 22,
            backgroundImage: NetworkImage(Courses.course[index].inst_img),
          ),
          Text(
            Courses.course[index].inst_name,
            style: GoogleFonts.poppins(),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFF07294D),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "View Course",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 13, color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
