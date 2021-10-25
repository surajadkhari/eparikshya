import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'home.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedindex = 0;

  static List<Widget> pages = <Widget>[home(), Container(), Container()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        // appBar: AppBar(
        //   title: Text(
        //     "Eparikshya",
        //     style: GoogleFonts.poppins(),
        //   ),
        //   leading: Icon(Icons.menu),
        // ),
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
            currentIndex: _selectedindex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
              BottomNavigationBarItem(icon: Icon(Icons.save), label: "Saved")
            ]));
  }
}
