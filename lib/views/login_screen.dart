import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/register_screen.dart';

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
                    hintText: "Masukkan e-mail"),
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
                    hintText: "Masukkan kata sandi"),
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
                  "Masuk",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum punya akun ? ",
                  style: TextStyle(fontSize: 16.sp),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: Text(
                    "Daftar ",
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xFFC5705D)),
                  ),
                ),
                Text(
                  "sekarang! ",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
