import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonAuth extends StatelessWidget {
  final Widget tujuan;
  final String namaButton;
  const CustomButtonAuth(
      {super.key, required this.namaButton, required this.tujuan});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 30.h),
        height: 50.h,
        width: 260.w,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => tujuan));
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color(0xFFC5705D),
            backgroundColor: const Color(0xFFC5705D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          child: Text(
            namaButton,
            style: TextStyle(fontSize: 16.sp, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
