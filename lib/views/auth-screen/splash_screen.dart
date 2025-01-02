import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/auth-screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    return Scaffold(
      backgroundColor: const Color(0xFFDFD3C3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200.h),
              child: Image.asset(
                'assets/logo-app.png',
                height: 250.h,
                width: 200.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250.h),
              child: Text(
                "Masakan sehat untuk tubuh yang sehat",
                style: TextStyle(fontSize: 14.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
