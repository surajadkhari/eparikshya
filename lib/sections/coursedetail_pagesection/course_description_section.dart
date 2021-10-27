import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DescrptionSection extends StatelessWidget {
  const DescrptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Master Python by building 100 project in 100 days.Learn to build websites,games,apps,plus scraping and data science",
              style: GoogleFonts.poppins(),
              textAlign: TextAlign.justify,
            ),
            Container(
              color: Colors.yellow,
              child: Text('Best seller'),
            ),
            Wrap(
              children: [
                Text('4.7 '),
                RatingBar.builder(
                  itemSize: 20.0,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    size: 5,
                    color: Colors.teal,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
            Text(
              '(55,835 ratings),252059 students',
              style: GoogleFonts.poppins(),
            ),
            Wrap(
              children: [
                Icon(Icons.update),
                Text(
                  'Last updated 02/2021',
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
            Wrap(
              children: [
                Icon(Icons.language),
                Text(
                  'English',
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
            Wrap(
              children: [
                Icon(Icons.subtitles_outlined),
                Text(
                  'English,French',
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
            Text(
              'US\$90.0',
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Buy Now'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  height: 50,
                  color: Colors.green,
                ))
              ],
            )
          ],
        ));
  }
}
