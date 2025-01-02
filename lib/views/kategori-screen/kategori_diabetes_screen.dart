import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/info-screen/info_diabetes_screen.dart';
import 'package:masaku/widget/MenuItem.dart';
import 'package:masaku/widget/card_makanan.dart';
import 'package:masaku/widget/custom_appbar_kategori.dart';

class KategoriDiabetesScreen extends StatelessWidget {
  const KategoriDiabetesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppbarKategori(
            tujuan: InfoDiabetesScreen(),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          children: [
            SizedBox(
              width: 300.w,
              child: Text(
                "Diabetes",
                style: TextStyle(
                    fontSize: 24.sp,
                    color: const Color(0xFFC5705D),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
              width: 300.w,
              child: Text(
                "Makanan dengan indeks glikemik rendah dan kaya serat",
                style:
                    TextStyle(fontSize: 11.sp, color: const Color(0xFFC5705D)),
              ),
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return CardMakanan(
                    description: menuItems[index].title,
                    imagePath: menuItems[index].imageUrl,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
