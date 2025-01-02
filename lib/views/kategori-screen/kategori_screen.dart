import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/kategori-screen/kategori_asamurat_screen.dart';
import 'package:masaku/views/kategori-screen/kategori_diabetes_screen.dart';
import 'package:masaku/views/auth-screen/login_screen.dart';
import 'package:masaku/views/kategori-screen/kategori_hipertensi_screen.dart';
import 'package:masaku/views/kategori-screen/kategori_maag_screen.dart';
import 'package:masaku/widget/card_kategori.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(
          top: 30.h,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 300.w,
                  child: Text(
                    "Kategori Makanan",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: const Color(0xFFC5705D),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 5.h,
                  ),
                  width: 300.w,
                  child: Text(
                    "Disini kamu bisa mencari resep makanan sesuai dengan penyakit yang kamu derita ya~",
                    style: TextStyle(
                        fontSize: 11.sp, color: const Color(0xFFC5705D)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const KategoriCard(
                  title: "Diabetes",
                  description:
                      "Makanan dengan indeks glikemik rendah dan kaya serat.",
                  imagePath: "assets/diabetes.png",
                  tujuan: KategoriDiabetesScreen(),
                ),
                const KategoriCard(
                  title: "Asam Urat",
                  description:
                      "Makanan rendah purin untuk mengurangi kadar asam urat.",
                  imagePath: "assets/asam-urat.png",
                  tujuan: KategoriAsamUratScreen(),
                ),
                const KategoriCard(
                  title: "Maag",
                  description:
                      "Makanan yang mudah dicerna dan tidak merangsang asam lambung.",
                  imagePath: "assets/maag.png",
                  tujuan: KategoriMaagScreen(),
                ),
                const KategoriCard(
                  title: "Hipertensi",
                  description:
                      "Makanan rendah garam, kaya kalium, dan lemak sehat",
                  imagePath: "assets/hipertensi.png",
                  tujuan: KategoriHipertensiScreen(),
                ),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
