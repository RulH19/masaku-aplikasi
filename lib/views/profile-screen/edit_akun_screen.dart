import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/auth-screen/login_screen.dart';
import 'package:masaku/widget/custom_appbar.dart';
import 'package:masaku/widget/custom_button_auth.dart';
import 'package:masaku/widget/custom_textfield.dart';

class EditAkunScreen extends StatefulWidget {
  const EditAkunScreen({super.key});

  @override
  State<EditAkunScreen> createState() => _EditAkunScreenState();
}

class _EditAkunScreenState extends State<EditAkunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppBar(title: "Edit Akun"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                'assets/no-foto.png',
                width: 135.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.h, top: 10.h),
              child: Text(
                "Nama",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Center(
              child: CustomTextField(
                hintText: "Nama",
                marginLeft: 0.h,
                borderRadius: BorderRadius.circular(20.r),
                lebarContainer: 300.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.h, top: 10.h),
              child: Text(
                "E-mail",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Center(
              child: CustomTextField(
                hintText: "E-mail",
                marginLeft: 0.h,
                borderRadius: BorderRadius.circular(20.r),
                lebarContainer: 300.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.h, top: 10.h),
              child: Text(
                "Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Center(
              child: CustomTextField(
                hintText: "Kata Sandi",
                marginLeft: 0.h,
                borderRadius: BorderRadius.circular(20.r),
                lebarContainer: 300.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.h, top: 10.h),
              child: Text(
                "Konfirmasi Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Center(
              child: CustomTextField(
                hintText: "Konfirmasi Kata Sandi",
                marginLeft: 0.h,
                borderRadius: BorderRadius.circular(20.r),
                lebarContainer: 300.w,
              ),
            ),
            CustomButtonAuth(
              namaButton: "Simpan",
              tujuan: const LoginScreen(),
              borderRadius: BorderRadius.circular(50.r),
              lebarContainer: 200.w,
            )
          ],
        ),
      ),
    );
  }
}
