import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/info_screen.dart';
import 'package:masaku/views/login_screen.dart';
import 'package:masaku/widget/custom_button_auth.dart';
import 'package:masaku/widget/custom_text_auth.dart';
import 'package:masaku/widget/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                'assets/register.png',
                height: 181.h,
                width: 237.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.h),
              child: Text(
                "Buat akun!",
                style:
                    TextStyle(fontSize: 25.sp, color: const Color(0xFFC5705D)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.h),
              child: Text(
                "Bagi kalian yang belum membuat\nakun, dibuat dulu akunnya ya~",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 20.h),
              child: Text(
                "Nama",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            const CustomTextField(hintText: "nama"),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            const CustomTextField(hintText: "e-mail"),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            const CustomTextField(hintText: "kata sandi"),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Konfirmasi Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            const CustomTextField(hintText: "konfirmasi kata sandi"),
            const CustomButtonAuth(
              namaButton: "Daftar",
              tujuan: InfoScreen(),
            ),
            const CustomTextView(
                pertanyaan: "Sudah", arahan: "Masuk", tujuan: LoginScreen())
          ],
        ),
      ),
    );
  }
}
