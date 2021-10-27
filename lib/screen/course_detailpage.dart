import 'package:eparikshya/const/color_const.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_description_section.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_whatyoulearn_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 5,
          child: Scaffold(
              body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                leading: null,
                titleSpacing: 0.0,
                backgroundColor: KappColor,
                title: Text('Course'),
                centerTitle: true,
                toolbarHeight: 50,
                collapsedHeight: 50,
                pinned: true,
                forceElevated: false,
                expandedHeight: 360,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    margin: EdgeInsets.only(top: 50),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.all(5),
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      'http://eparikshya.com/public/frontend/images/slider/s-1.jpg',
                                    )))),
                        Text(
                          '100 Days of Code - the Complete Python Pro Bootcamp for 2021',
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Container(
                    color: KappColor,
                    child: TabBar(
                      labelStyle: GoogleFonts.poppins(),
                      physics: BouncingScrollPhysics(),
                      // indicatorColor: Color(0x00ffc600),
                      indicatorColor: Colors.yellow,

                      isScrollable: true,
                      tabs: [
                        // Container(
                        //   child: Text(
                        //     "Highlights",
                        //     style: GoogleFonts.poppins(
                        //         color: Colors.white, fontSize: 14),
                        //   ),
                        // ),
                        Tab(text: "Description"),
                        Tab(text: "What you will learn"),
                        Tab(text: "Cirriculum"),
                        Tab(text: "This course includes"),
                        Tab(text: "Required"),
                        // Container(
                        //   child: Text("Our Team"),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: DescrptionSection(),
                    ),
                    Container(
                      child: YourleanSection(),
                    ),
                    Container(child: Text('Cirriculum')),
                    Container(child: Text('This course includes')),
                    Container(child: Text('Requirement'))
                  ],
                ),
              )
            ],
          ))),
    );
  }
}
