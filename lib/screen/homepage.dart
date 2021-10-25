import 'package:eparikshya/model/course_model.dart';
import 'package:eparikshya/sections/course_card_section/course_card_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("eparikshya"),
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 320,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Courses.course.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: CourseCard(
                      index: index,
                    ),
                    margin: EdgeInsets.only(top: 8.0, left: 8.0),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
