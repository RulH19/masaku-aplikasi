import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextView extends StatelessWidget {
  final String pertanyaan;
  final String arahan;
  final Widget tujuan;
  const CustomTextView(
      {super.key,
      required this.pertanyaan,
      required this.arahan,
      required this.tujuan});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$pertanyaan punya akun ? ",
            style: TextStyle(fontSize: 16.sp),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tujuan));
            },
            child: Text(
              arahan,
              style: TextStyle(fontSize: 16.sp, color: const Color(0xFFC5705D)),
            ),
          ),
          Text(
            " sekarang! ",
            style: TextStyle(fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
