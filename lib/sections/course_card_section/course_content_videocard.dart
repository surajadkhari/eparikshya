class CoursevideoModel {
  final String videoimg;
  final String time;
  final String ratingvalue;
  final String instructor;

  CoursevideoModel(
      {required this.videoimg,
      required this.time,
      required this.ratingvalue,
      required this.instructor});

  List<CoursevideoModel> courseVideocard = [

    CoursevideoModel(videoimg: "",time: "",ratingvalue: "",instructor: ''),
    
    CoursevideoModel(videoimg: "",time: "",ratingvalue: "",instructor: ''),
    CoursevideoModel(videoimg: "",time: "",ratingvalue: "",instructor: ''),
        
    CoursevideoModel(videoimg: "",time: "",ratingvalue: "",instructor: ''),
  ];
}
