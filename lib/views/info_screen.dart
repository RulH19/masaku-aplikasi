import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/widget/custom_appbar.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppBar(title: "Info Aplikasi"),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50.h),
              child: Image.asset(
                'assets/logo-app.png',
                height: 181.h,
                width: 237.w,
              ),
            ),
          ),
          Text(
            "Masaku",
            style: TextStyle(fontSize: 24.sp, color: const Color(0xFFC5705D)),
          ),
          Container(
            margin: EdgeInsets.only(top: 35.h),
            width: 300.w,
            child: Column(
              children: [
                Text(
                  "Masaku adalah aplikasi resep makanan untuk penderita diabetes, maag, hipertensi, dan asam urat.",
                  style: TextStyle(fontSize: 18.sp, letterSpacing: 0.7),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Aplikasi ini menyediakan berbagai resep lezat, bergizi, dan sesuai dengan kebutuhan kesehatan. Dengan Masaku, pengguna dapat memasak makanan sehat tanpa mengorbankan rasa, sekaligus menjaga pola makan yang tepat untuk kondisi mereka.",
                  style: TextStyle(fontSize: 18.sp, letterSpacing: 0.7),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
