import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.only(left: 18.w),
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2))
            ]),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/back.png",
            width: 23.w,
            height: 23.h,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24.sp, color: const Color(0xFFC5705D)),
      ),
      centerTitle: true,
    );
  }
}
