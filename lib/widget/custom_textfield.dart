import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double? marginLeft;
  final BorderRadius? borderRadius;
  final double? lebarContainer;
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.marginLeft,
      this.borderRadius,
      this.lebarContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: lebarContainer ?? 280.w,
        margin: EdgeInsets.only(left: marginLeft ?? 40.h, top: 5.h),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(color: const Color(0xFFC5705D), width: 2.w)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(color: const Color(0xFFC5705D), width: 2.w)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                  borderSide:
                      BorderSide(color: const Color(0xFFC5705D), width: 2.w)),
              hintText: "Masukkan $hintText"),
        ));
  }
}
