import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/login_screen.dart';
import 'package:masaku/widget/custom_appbar.dart';
import 'package:masaku/widget/custom_button_auth.dart';

class PusatBantuanScreen extends StatelessWidget {
  const PusatBantuanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppBar(title: "Pusat Bantuan"),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/no-content.png'),
          Text(
            "uh-oh!",
            style: TextStyle(fontSize: 20.sp, color: const Color(0xFFC5705D)),
          ),
          Text(
            "Halaman tidak dapat ditemukan",
            style: TextStyle(fontSize: 20.sp, color: const Color(0xFFC5705D)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Maaf, halaman yang kamu tuju tidak",
            style: TextStyle(fontSize: 16.sp, color: const Color(0xFFC5705D)),
          ),
          Text(
            "dapat ditemukan",
            style: TextStyle(fontSize: 16.sp, color: const Color(0xFFC5705D)),
          ),
          CustomButtonAuth(
            namaButton: "Kembali ke halaman beranda",
            tujuan: const LoginScreen(),
            borderRadius: BorderRadius.circular(50.r),
          )
        ],
      ),
    );
  }
}
