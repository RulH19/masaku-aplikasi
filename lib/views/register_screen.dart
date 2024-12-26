import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/login_screen.dart';

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
            Container(
                width: 280.w,
                margin: EdgeInsets.only(left: 40.h, top: 5.h),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      hintText: "Masukkan nama",
                      hintStyle:
                          TextStyle(color: Colors.grey.withOpacity(0.5))),
                )),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Container(
                width: 280.w,
                margin: EdgeInsets.only(left: 40.h, top: 5.h),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      hintText: "Masukkan e-mail",
                      hintStyle:
                          TextStyle(color: Colors.grey.withOpacity(0.5))),
                )),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Container(
                width: 280.w,
                margin: EdgeInsets.only(left: 40.h, top: 5.h),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      hintText: "Masukkan kata sandi",
                      hintStyle:
                          TextStyle(color: Colors.grey.withOpacity(0.5))),
                )),
            Container(
              margin: EdgeInsets.only(left: 40.h, top: 10.h),
              child: Text(
                "Konfirmasi Kata Sandi",
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            Container(
                width: 280.w,
                margin: EdgeInsets.only(left: 40.h, top: 5.h),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFC5705D), width: 2.w)),
                      hintText: "Masukkan konfirmasi kata sandi",
                      hintStyle:
                          TextStyle(color: Colors.grey.withOpacity(0.5))),
                )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30.h),
                height: 50.h,
                width: 260.w,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFFC5705D),
                    backgroundColor: const Color(0xFFC5705D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  child: Text(
                    "Daftar",
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun ? ",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "Login ",
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xFFC5705D)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
