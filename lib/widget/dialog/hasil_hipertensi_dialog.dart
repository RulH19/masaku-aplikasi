import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/kategori-screen/kategori_hipertensi_screen.dart';

class HasilHipertensiDialog extends StatelessWidget {
  const HasilHipertensiDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 35.h),
          Text(
            "Hipertensi",
            style: TextStyle(
              fontSize: 30.sp,
              color: const Color(0xFFC5705D),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 35.h),
          Image.asset("assets/hipertensi-dialog.png"),
          SizedBox(height: 35.h),
          Text(
            "Berdasarkan formulir yang sudah kamu isi,  kemungkinan kamu memiliki kecenderungan hipertensi. Karena itu, kamu disarankan untuk memilih makanan rendah garam, tinggi kalium, serat, dan antioksidan.",
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => KategoriHipertensiScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Makanan yang dianjurkan",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFFC5705D),
                ),
              ),
              SizedBox(width: 80.w),
              Image.asset(
                'assets/arrow_forward.png',
                width: 25.w,
                height: 25.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
