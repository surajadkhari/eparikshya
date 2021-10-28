import 'package:eparikshya/const/color_const.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_cirriculumn_section.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_courseincludes_section.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_description_section.dart';
import 'package:eparikshya/sections/coursedetail_pagesection/course_requirement_section.dart';
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
              sliverAppBar(),
              SliverToBoxAdapter(
                child: Container(
                  height: 350,
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: DescrptionSection(),
                      ),
                      Container(
                        child: YourleanSection(),
                      ),
                      Container(child: CirriculumSection()),
                      Container(child: CourseincludeSection()),
                      Container(child: CourserequirementSection())
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: InstructionDetail(),
              )
            ],
          ))),
    );
  }

  Container InstructionDetail() {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: KappColor, borderRadius: BorderRadius.circular(8)),
            child: Wrap(
              // crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/8798027?v=4'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Instructor",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    Text(
                      "Dr  Angela Yu",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    Text(
                      "Developer and Lead instructor",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
              '''I'm Angela, I'm a developer with a passion for teaching. I'm the lead instructor at the London App Brewery, London's leading Programming Bootcamp. I've helped hundreds of thousands of students learn to code and change their lives by becoming a developer. I've been invited by companies such as Twitter, Facebook and Google to teach their employees.

My first foray into programming was when I was just 12 years old, wanting to build my own Space Invader game. Since then, I've made hundred of websites, apps and games. But most importantly, I realised that my greatest passion is teaching.

I spend most of my time researching how to make learning to code fun and make hard concepts easy to understand. I apply everything I discover into my bootcamp courses. In my courses, you'll find lots of geeky humour but also lots of explanations and animations to make sure everything is easy to understand.

I'll be there for you every step of the way.
                          ''',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 13),
              ),
              textAlign: TextAlign.justify)
        ],
      ),
    );
  }

//SliverAppbar
  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      leading: null,
      titleSpacing: 0.0,
      backgroundColor: KappColor,
      title: Text(
        'Phython Pro Bootamp for 2021',
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
      ),
      centerTitle: false,
      toolbarHeight: 50,
      collapsedHeight: 50,
      pinned: true,
      forceElevated: false,
      expandedHeight: 360,
      flexibleSpace: FlexibleSpaceBar(
        background: BannerTitle(),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: tapBarSection(),
      ),
    );
  }

//Tapbar Section
  Container tapBarSection() {
    return Container(
      color: KappColor,
      child: TabBar(
        labelStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 11)),
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
    );
  }

//Banner Title
  Container BannerTitle() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(
        top: 50,
      ),
      padding: EdgeInsets.only(top: 6, left: 10, right: 10, bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'http://eparikshya.com/public/frontend/images/slider/s-1.jpg',
                      )))),
          SizedBox(
            height: 8,
          ),
          Text(
            '100 Days of Code - the Complete Python Pro Bootcamp for 2021',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
