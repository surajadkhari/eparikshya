import 'package:eparikshya/model/course_model.dart';
import 'package:flutter/material.dart';

class instructor extends StatelessWidget {
  const instructor({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          CircleAvatar(
            maxRadius: 18,
            backgroundImage: NetworkImage(Courses.course[index].inst_img),
          ),
          Text(Courses.course[index].inst_name),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'View All courese',
              style: TextStyle(fontSize: 12),
            ),
            style: ElevatedButton.styleFrom(),
          ),
        ],
      ),
    );
  }
}
