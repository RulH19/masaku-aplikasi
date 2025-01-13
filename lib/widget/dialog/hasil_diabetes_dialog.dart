import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/kategori-screen/kategori_diabetes_screen.dart';

class HasilDiabetesDialog extends StatelessWidget {
  const HasilDiabetesDialog({
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
            "Diabetes",
            style: TextStyle(
              fontSize: 30.sp,
              color: const Color(0xFFC5705D),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 35.h),
          Image.asset("assets/diabetes-dialog.png"),
          SizedBox(height: 35.h),
          Text(
            "Berdasarkan formulir yang sudah kamu isi,  kemungkinan kamu memiliki kecenderungan diabetes. Karena itu, kamu disarankan untuk memilih makanan dengan indeks glikemik rendah dan kaya serat.",
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
                    builder: (context) => KategoriDiabetesScreen()));
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
