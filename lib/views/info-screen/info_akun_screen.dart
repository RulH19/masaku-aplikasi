import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/widget/custom_appbar.dart';

class InfoAkunScreen extends StatelessWidget {
  final List<String> items = [
    'Rutin cek gula darah.',
    'Olahraga teratur sesuai kondisi.',
    'Kelola stres dengan relaksasi.',
    'Konsumsi obat/insulin sesuai anjuran dokter.',
    'Jaga berat badan ideal dan pola tidur.',
    'Hindari rokok, alkohol, dan rawat kesehatan kaki.',
    'Edukasi diri tentang diabetes.',
  ];
  InfoAkunScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppBar(title: "Akun"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/no-foto.png',
                  width: 50.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text("User 1",
                    style: TextStyle(
                      fontSize: 20.sp,
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h),
              width: 350.w,
              child: const Text(
                "Berdasarkan formulir yang kamu isi, kamu mungkin memiliki kecenderungan diabetes. Disarankan untuk memilih makanan dengan indeks glikemik rendah dan kaya serat.",
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              width: 350.w,
              child: const Text(
                "Hasil ini belum tentu akurat, untuk hasil yang lebih akurat silakan periksakan diri ke fasilitas kesehatan terkait ya.",
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              width: 350.w,
              child: const Text(
                "Beberapa langkah menjaga kesehatan:",
                textAlign: TextAlign.justify,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items.map((item) {
                return Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.w),
                  child: Row(
                    children: [
                      const Icon(Icons.circle, size: 5),
                      SizedBox(width: 5.w),
                      Expanded(child: Text(item)),
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.h),
              width: 350.w,
              child: const Text(
                "Tetap semangat ya, dan jangan ragu konsultasi ke dokter! 😊",
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
