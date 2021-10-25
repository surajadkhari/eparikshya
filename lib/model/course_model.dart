class Courses {
  final String course_name;
  final String course_img;
  final String inst_name;
  final String inst_img;

  Courses(
      {required this.course_name,
      required this.course_img,
      required this.inst_name,
      required this.inst_img});
  static List<Courses> course = [
    Courses(
        course_img:
            'http://eparikshya.com/public/frontend/images/course/cu-1.jpg',
        course_name: "Learn basis javascirpt from start for beginner",
        inst_img:
            'http://eparikshya.com/public/frontend/images/course/teacher/t-1.jpg',
        inst_name: 'Jaya College'),
    Courses(
        course_img:
            'http://eparikshya.com/public/frontend/images/course/cu-1.jpg',
        course_name: "Learn basis javascirpt from start for beginner",
        inst_img:
            'http://eparikshya.com/public/frontend/images/course/teacher/t-1.jpg',
        inst_name: 'Jaya College')
  ];
}
