import 'package:eparikshya/const/color_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(
          8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _userInfo(),
            _accountPageRow(),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _profilSettingItem(
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                        ),
                        text: Text('Edit Profile'),
                        hasnavidation: true);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Container _profilSettingItem(
          {required Icon icon,
          required Text text,
          required bool hasnavidation}) =>
      Container(
        margin: EdgeInsets.all(1),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        ),
      );

  Padding _accountPageRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
      child: Text('Account Page',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          )),
    );
  }

  Container _userInfo() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: KappColor),
      margin: EdgeInsets.all(1),
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              maxRadius: 55,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                maxRadius: 52,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/8798027?v=4'),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'First Name Last Name',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 13),
          )
        ],
      ),
    );
  }
}
