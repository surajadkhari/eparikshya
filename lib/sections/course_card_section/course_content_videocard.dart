class CoursevideoModel {
  final String videoimg;
  final String tile;
  final String time;
  final String ratingvalue;
  final String instructor;

  CoursevideoModel(
      {required this.videoimg,
      required this.tile,
      required this.time,
      required this.ratingvalue,
      required this.instructor});

  static List<CoursevideoModel> courseVideocard = [
    CoursevideoModel(
        videoimg:
            'http://eparikshya.com/public/frontend/images/course/cu-4.jpg',
        time: "05 min",
        ratingvalue: "5/5",
        instructor: 'Vivek Bindra',
        tile: 'How to Scale Up your Business'),
    CoursevideoModel(
        videoimg:
            "http://eparikshya.com/public/frontend/images/course/cu-3.jpg",
        time: "09 min",
        ratingvalue: "5/5",
        instructor: 'Vivek Bindra',
        tile: 'How to Achieve your Goal?'),
    CoursevideoModel(
        videoimg:
            "http://eparikshya.com/public/frontend/images/course/cu-5.jpg",
        time: "07",
        ratingvalue: "5/5",
        instructor: 'Vivek Bindra',
        tile: 'How to Create a Culture of High Performance'),
  ];
}
