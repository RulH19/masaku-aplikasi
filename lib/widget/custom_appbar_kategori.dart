import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarKategori extends StatelessWidget {
  final Widget tujuan;
  const CustomAppbarKategori({super.key, required this.tujuan});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
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
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => tujuan));
          },
          icon: Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Image.asset(
              "assets/info-circle.png",
              width: 30.w,
              height: 30.h,
            ),
          ),
        )
      ],
    );
  }
}
