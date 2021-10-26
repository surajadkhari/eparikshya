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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Container(
              child: TextformfieldWidget(),
            ),
          ),
        ],
      ),
    );
  }

  TextField TextformfieldWidget() {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 7.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFFD6D6D6)),
          ),
          fillColor: Colors.grey[200],
          filled: true,
          hintText: "Enter your query here",
          hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 11)),
          prefixIcon: Icon(
            Icons.search,
            size: 15,
          )),
    );
  }
}
