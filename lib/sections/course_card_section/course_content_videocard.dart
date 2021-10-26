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
        videoimg: "", time: "", ratingvalue: "", instructor: '', tile: 'How to Scale Up your Business'),
    CoursevideoModel(
        videoimg: "", time: "", ratingvalue: "", instructor: '', tile: 'How to Achieve your Goal?'),
    CoursevideoModel(
        videoimg: "", time: "", ratingvalue: "", instructor: '', tile: 'How to Sucessfully Replace Yourself with a Succession -'),
    CoursevideoModel(
        videoimg: "", time: "", ratingvalue: "", instructor: '', tile: 'How to Create a Culture of High Performance'),
  ];
}
