import 'package:eparikshya/const/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

// class CirriculumSection extends StatefulWidget {
//   const CirriculumSection({Key? key}) : super(key: key);

//   @override
//   _CirriculumSectionState createState() => _CirriculumSectionState();
// }

// class _CirriculumSectionState extends State<CirriculumSection> {
//   @override
//   Widget build(BuildContext context) {
//     return ExpansionTile(
//       backgroundColor: Colors.red,
//       tilePadding: EdgeInsets.zero,
//       title: Text('ExpansionTile 1'),
//       subtitle: Text('Trailing expansion arrow icon'),
//       trailing: Container(),
//       children: <Widget>[
//         ListTile(
//           title: Text('This is tile number 1'),
//           contentPadding: EdgeInsets.zero,
//         ),
//       ],
//     );
//   }
// }

class CirriculumSection extends StatelessWidget {
  const CirriculumSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 1000),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Text(
                  "Cirriculum",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 1000,
                child: ListView.builder(
                    padding: null,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return
                          //  Wrap(
                          //   spacing: 10,
                          //   children: [
                          //     Icon(
                          //       Icons.check,
                          //       size: 12,
                          //     ),
                          //     Text(
                          //       'Be able to program in Python professionally',
                          //       style: GoogleFonts.poppins(
                          //           textStyle: TextStyle(fontSize: 13)),
                          //     )
                          //   ],
                          // );
                          ExpansionTile(
                        title: Text(
                            'Section 1-Day 1- Beginner -Working with Variables in Pythone to manage data',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 12))),
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 60,
                                    margin: EdgeInsets.all(0.5),
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                    ),
                                    child: ListTile(
                                      title: Text(
                                        "Hello",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13)),
                                      ),
                                      subtitle: Text(
                                        'hi',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13)),
                                      ),
                                    ));
                              }),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
