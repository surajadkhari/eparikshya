import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class YourleanSection extends StatelessWidget {
  const YourleanSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What you' '\ learn',
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              
                physics: BouncingScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Wrap(

                    children: [
                      Icon(Icons.check),
                      Text(
                        'Be able to program in Python professionally',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 15,
                        )),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
