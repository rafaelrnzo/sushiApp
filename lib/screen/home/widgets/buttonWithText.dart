// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:rent_app/assets/color.dart';
import 'package:sizer/sizer.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white,
            ),
            width: 7.5.w,
            height: 7.5.w,
            child: Icon(
              icon,
              size: 6.w,
              color: primary,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            '${text}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
