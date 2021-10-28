import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CourserequirementSection extends StatelessWidget {
  const CourserequirementSection({Key? key}) : super(key: key);

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
              "What you will Learn",
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 8,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemExtent: 35,
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

            // SizedBox(
            //   height: 8,
            // ),
            // // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // //   Container(
            // //     height: 25,
            // //     padding: EdgeInsets.all(5),
            // //     decoration: BoxDecoration(
            // //         color: KappColor,
            // //         borderRadius: BorderRadius.circular(6)),
            // //     child: Text('Best seller',
            // //         style: GoogleFonts.poppins(
            // //           textStyle: TextStyle(
            // //               fontSize: 12,
            // //               color: Colors.white,
            // //               fontWeight: FontWeight.w500),
            // //         )),
            // //   ),
            // // ]),
            // SizedBox(
            //   height: 3,
            // ),
            // Wrap(
            //   spacing: 8,
            //   children: [
            //     Text('4.7 ',
            //         style: GoogleFonts.poppins(
            //             textStyle: TextStyle(fontSize: 12))),
            //     RatingBar.builder(
            //       itemSize: 14.0,
            //       initialRating: 3,
            //       minRating: 1,
            //       direction: Axis.horizontal,
            //       allowHalfRating: true,
            //       itemCount: 5,
            //       itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
            //       itemBuilder: (context, _) => const Icon(
            //         Icons.star,
            //         size: 5,
            //         color: Colors.teal,
            //       ),
            //       onRatingUpdate: (rating) {
            //         print(rating);
            //       },
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 3,
            // ),
            // Text(
            //   '(55,835 ratings),252059 students',
            //   style:
            //       GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12)),
            // ),
            // SizedBox(
            //   height: 3,
            // ),
            // Wrap(
            //   spacing: 8,
            //   children: [
            //     Icon(
            //       Icons.update,
            //       size: 20,
            //     ),
            //     Text(
            //       'Last updated 02/2021',
            //       style: GoogleFonts.poppins(
            //           textStyle: TextStyle(fontSize: 12)),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 3,
            // ),
            // Wrap(
            //   spacing: 8,
            //   children: [
            //     Icon(
            //       Icons.language,
            //       size: 20,
            //     ),
            //     Text(
            //       'English',
            //       style: GoogleFonts.poppins(
            //           textStyle: TextStyle(fontSize: 12)),
            //     )
            //   ],
            // ),
            // SizedBox(
            //   height: 3,
            // ),
            // Wrap(
            //   spacing: 8,
            //   children: [
            //     Icon(
            //       Icons.subtitles_outlined,
            //       size: 20,
            //     ),
            //     Text(
            //       'English,French, 5 more',
            //       style: GoogleFonts.poppins(
            //           textStyle: TextStyle(fontSize: 12)),
            //     )
            //   ],
            // ),
            // Text(
            //   'US\$90.0',
            //   style: GoogleFonts.poppins(
            //       textStyle:
            //           TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            // ),
            // // Row(
            //   children: [
            //     Expanded(
            //       child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(primary: KappColor),
            //         onPressed: () {},
            //         child: Text('Buy Now',
            //             style: GoogleFonts.poppins(
            //                 textStyle: TextStyle(fontSize: 14))),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: ElevatedButton(
            //           style: ElevatedButton.styleFrom(
            //               primary: Colors.white,
            //               side:
            //                   BorderSide(color: Colors.white, width: 0.5)),
            //           onPressed: () {},
            //           child: Text('Add to cart',
            //               style: GoogleFonts.poppins(
            //                   textStyle: TextStyle(
            //                       fontSize: 14, color: Colors.black)))),
            //     ),
            //     // Expanded(
            //     //   child: ElevatedButton(
            //     //       style: ElevatedButton.styleFrom(
            //     //         primary: Colors.white,
            //     //         side: BorderSide(color: KappColor, width: 0.5),
            //     //       ),
            //     //       onPressed: () {},
            //     //       child: Text(
            //     //         'Add to wishlsit',
            //     //         style: GoogleFonts.poppins(
            //     //             textStyle: TextStyle(
            //     //                 fontSize: 14, color: Colors.black)),
            //     //       )),
            //     // )
            //   ],
            // )
          ],
        ));

    // Container(
    //   margin: EdgeInsets.all(10),
    //   child: ListView(
    //     // crossAxisAlignment: CrossAxisAlignment.start,
    //     physics: NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     children: [
    //       Text(
    //         'What you' '\ learn',
    //         style: GoogleFonts.poppins(
    //             textStyle:
    //                 TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    //       ),
    //       SizedBox(
    //         height: 100,
    //         child: ListView.builder(
    //             shrinkWrap: true,
    //             physics: NeverScrollableScrollPhysics(),
    //             itemCount: 8,
    //             itemBuilder: (context, index) {
    //               return Wrap(
    //                 spacing: 10,
    //                 children: [
    //                   Icon(Icons.check),
    //                   Text(
    //                     'Be able to program in Python professionally',
    //                     style: GoogleFonts.poppins(
    //                         textStyle: TextStyle(
    //                       fontSize: 15,
    //                     )),
    //                   )
    //                 ],
    //               );
    //             }),
    //       )
    //     ],
    //   ),
    // );
  }
}
