import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/info-screen/info_akun_screen.dart';
import 'package:masaku/views/profile-screen/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Profil",
            style: TextStyle(fontSize: 24.sp, color: const Color(0xFFC5705D)),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()));
              },
              icon: Padding(
                padding: EdgeInsets.only(right: 15.h),
                child: Image.asset(
                  "assets/Setting.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10.r),
                width: 325.w,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2,
                        spreadRadius: 0,
                        offset: const Offset(0, 2)),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/no-foto.png',
                      width: 50.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Profil",
                      style: TextStyle(
                          fontSize: 24.sp, color: const Color(0xFFC5705D)),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoAkunScreen()));
                      },
                      icon: Container(
                        width: 30.w,
                        height: 35.h,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          color: const Color(0xFFC5705D),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: const Offset(0, 4)),
                          ],
                        ),
                        child: Image.asset(
                          'assets/right.png',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h, left: 20.w),
              child: Text(
                "My Favorites",
                style:
                    TextStyle(fontSize: 24.sp, color: const Color(0xFFC5705D)),
              ),
            ),
          ],
        ));
  }
}
