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
        margin: EdgeInsets.all(10),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Text(
              "Master Python by building 100 project in 100 days.Learn to build websites,games,apps,plus scraping and data science",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13)),
            ),
            SizedBox(
              height: 8,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Wrap(
                    spacing: 10,
                    children: [
                      Icon(
                        Icons.check,
                        size: 12,
                      ),
                      Text(
                        'Be able to program in Python professionally',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(fontSize: 13)),
                      )
                    ],
                  );
                })
          ],
        ));
  }
}
