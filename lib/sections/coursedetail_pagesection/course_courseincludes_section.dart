import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseincludeSection extends StatelessWidget {
  const CourseincludeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This course includes',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Wrap(
            spacing: 10,
            children: [
              Icon(Icons.video_call),
              Text(
                '63.5 total hours on demand videos',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 15,
                )),
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: [
              Icon(Icons.support),
              Text(
                'Support files',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 15,
                )),
              )
            ],
          ),
          Wrap(
            spacing: 10,
            children: [
              Icon(Icons.book),
              Text(
                '292 Articles',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 15,
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
