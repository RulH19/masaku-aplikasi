import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/profile-screen/edit_akun_screen.dart';
import 'package:masaku/views/info-screen/info_aplikasi_screen.dart';
import 'package:masaku/views/auth-screen/login_screen.dart';
import 'package:masaku/views/profile-screen/pusat_bantuan_screen.dart';
import 'package:masaku/widget/custom_appbar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const Padding(
          padding: EdgeInsets.only(top: 15.0), // Tambahkan margin top di sini
          child: CustomAppBar(title: "Pengaturan"),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: const Color(0xFFDFD3C3).withOpacity(0.2),
          width: 340.w,
          height: 200.h,
          padding: EdgeInsets.only(top: 10.h),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditAkunScreen()));
                    },
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      width: 300.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/user-edit.png",
                            width: 23.w,
                            height: 23.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Edit Akun",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const InfoAplikasiScreen()));
                    },
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      width: 300.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/info-circle.png",
                            width: 23.w,
                            height: 23.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Info Aplikasi",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PusatBantuanScreen()));
                    },
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      width: 300.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/message-question.png",
                            width: 23.w,
                            height: 23.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "Pusat Bantuan",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.w),
                      width: 300.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/logout.png",
                            width: 23.w,
                            height: 23.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "keluarkan Akun",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
