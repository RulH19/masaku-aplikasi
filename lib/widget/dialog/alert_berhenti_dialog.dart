import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/widget/dialog/hasil_asamurat_dialog.dart';
import 'package:masaku/widget/dialog/hasil_diabetes_dialog.dart';
import 'package:masaku/widget/dialog/hasil_hipertensi_dialog.dart';
import 'package:masaku/widget/dialog/hasil_maag_dialog.dart';

class AlertBerhentiDialog extends StatelessWidget {
  final String hasil;
  const AlertBerhentiDialog({
    super.key,
    required this.hasil,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 35.h),
              Text(
                "BERHENTI",
                style: TextStyle(
                  fontSize: 30.sp,
                  color: const Color(0xFFC5705D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35.h),
              Image.asset("assets/berhenti-dialog.png"),
              SizedBox(height: 35.h),
              Text(
                "Sebelum kamu lihat hasilnya, kamu harus tau dulu yaa, kalau hasil ini bukan merupakan hasil yang pasti. Jadi jika kamu ingin hasil yg lebih pasti silahkan periksakan dirimu ke fasiltas kesehatan terkait~",
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
                switch (hasil) {
                  case 'Diabetes':
                    Navigator.of(context).pop();
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) => HasilDiabetesDialog(),
                    );

                    break;
                  case 'Maag':
                    Navigator.of(context).pop();
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) => HasilMaagDialog(),
                    );

                    break;

                  case 'Asam Urat':
                    Navigator.of(context).pop();
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) => HasilAsamUratDialog(),
                    );

                    break;

                  case 'Hipertensi':
                    Navigator.of(context).pop();
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) =>
                          HasilHipertensiDialog(),
                    );

                    break;

                  case 'Tidak ada indikasi penyakit serius':
                    Navigator.of(context).pop();
                    break;
                }
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
        ),
        Positioned(
          right: 50.w,
          top: 160.h,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/close-circle.png",
              width: 25.w,
            ),
          ),
        ),
      ],
    );
  }
}
