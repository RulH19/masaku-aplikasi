import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/auth-screen/register_screen.dart';
import 'package:masaku/widget/bar_bottom_navigation.dart';
import 'package:masaku/widget/custom_button_auth.dart';
import 'package:masaku/widget/custom_text_auth.dart';
import 'package:masaku/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/login.png',
              height: 181.h,
              width: 237.w,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.h),
            child: Text(
              "Halo!",
              style: TextStyle(fontSize: 25.sp, color: const Color(0xFFC5705D)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.h),
            child: Text(
              "masuk untuk melanjutkan~",
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.h, top: 20.h),
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
          const CustomTextField(
            hintText: 'kata sandi',
          ),
          const CustomButtonAuth(
            namaButton: "Masuk",
            tujuan: BarBottomNavigation(),
          ),
          const CustomTextView(
              pertanyaan: "Belum", arahan: "Daftar", tujuan: RegisterScreen())
        ],
      ),
    );
  }
}
