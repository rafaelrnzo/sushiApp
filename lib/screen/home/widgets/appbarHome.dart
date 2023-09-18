import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/screen/profile/profilePage.dart';
import 'package:sizer/sizer.dart';

AppBar homeAppbar(context) {
  return AppBar(
    toolbarHeight: 7.5.h,
    backgroundColor: Colors.white,
    // elevation: 2,
    title: Text(
      'SushiGo',
      style: TextStyle(color: secondary),
    ),
    // centerTitle: true,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "welcome!",
                  style: TextStyle(color: secondary, fontSize: 14),
                ),
                Text(
                  "Rafael Lorenzo",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Ionicons.person_circle,
                color: secondary,
                size: 8.7.w,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ],
  );
}
