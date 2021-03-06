import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/screen/courses_page.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'user_profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedindex = 0;

  static List<Widget> pages = <Widget>[
    home(),
    CoursesPage(),
    Container(),
    Container(),
    UserProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Eparikshya",
            style: GoogleFonts.poppins(),
          ),
          leading: Icon(Icons.menu),
        ),
        body: pages[_selectedindex],
        // ListView(
        //   children: [
        //     SizedBox(
        //       height: 345,
        //       child: ListView.builder(
        //           shrinkWrap: true,
        //           scrollDirection: Axis.horizontal,
        //           itemCount: Courses.course.length,
        //           itemBuilder: (context, index) {
        //             return Container(
        //               child: CourseCard(
        //                 index: index,
        //               ),
        //               margin: EdgeInsets.only(top: 8.0, left: 8.0),
        //             );
        //           }),
        //     ),
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
            unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
            selectedItemColor: Color(0xFF07294D),
            currentIndex: _selectedindex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
              BottomNavigationBarItem(icon: Icon(Icons.save), label: "Saved"),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ]));
  }
}
