import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoHipertensiScreen extends StatelessWidget {
  const InfoHipertensiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Hipertensi",
              style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color(0xFFC5705D),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.h, left: 30.w),
            width: 300.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Definisi :",
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: const Color(0xFFC5705D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Hipertensi adalah kondisi di mana tekanan darah terhadap dinding arteri terlalu tinggi secara konsisten.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFFC5705D),
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Gejala :",
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: const Color(0xFFC5705D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Biasanya tanpa gejala, tetapi pada tekanan darah sangat tinggi dapat menyebabkan sakit kepala, pusing, dan pandangan kabur.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFFC5705D),
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "Hindari : ",
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: const Color(0xFFC5705D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Garam berlebih, makanan olahan, makanan kalengan, gorengan, makanan tinggi lemak jenuh, dan minuman berkafein berlebih.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFFC5705D),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
