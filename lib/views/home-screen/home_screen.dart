import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/info-screen/info_akun_screen.dart';
import 'package:masaku/views/info-screen/info_aplikasi_screen.dart';
import 'package:masaku/views/info-screen/info_asamurat_screen.dart';
import 'package:masaku/widget/MenuItem.dart';
import 'package:masaku/widget/MenuItemHome.dart';
import 'package:masaku/widget/card_makanan.dart';
import 'package:masaku/widget/dialog/custom_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTabIndex = 0;

  final List<Widget> _tabs = [
    InfoAkunScreen(),
    InfoAplikasiScreen(),
    InfoAsamUratScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo Kamu ~",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: const Color(0xFFC5705D),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mau masak apa hari ini?",
                      style: TextStyle(
                          fontSize: 12.sp, color: const Color(0xFFC5705D)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120.w,
                ),
                Image.asset(
                  'assets/no-foto.png',
                  width: 35.w,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari resep...",
                hintStyle:
                    TextStyle(color: const Color(0xFFC5705D).withOpacity(0.5)),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Image.asset(
                    "assets/search-normal.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.r),
                    borderSide:
                        BorderSide(color: const Color(0xFFC5705D), width: 1.w)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.r),
                    borderSide:
                        BorderSide(color: const Color(0xFFC5705D), width: 1.w)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.r),
                    borderSide:
                        BorderSide(color: const Color(0xFFC5705D), width: 1.w)),
                filled: true,
                fillColor: Colors.white,
              ),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              20.h,
            ),
            height: 40.h,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabButton("Semua", 0),
                  SizedBox(
                    width: 5.h,
                  ),
                  _buildTabButton("Sarapan", 1),
                  SizedBox(
                    width: 5.h,
                  ),
                  _buildTabButton("Makan Siang", 2),
                  SizedBox(
                    width: 5.h,
                  ),
                  _buildTabButton("Makan Malam", 3),
                  SizedBox(
                    width: 5.h,
                  ),
                  _buildTabButton("Camilan", 4),
                  SizedBox(
                    width: 5.h,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150.h,
            margin: EdgeInsets.only(left: 15.h, right: 20.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuItemHome[_currentTabIndex].length,
              itemBuilder: (context, index) {
                final item = menuItemHome[_currentTabIndex][index];
                return CardMakanan(
                  description: item.title,
                  imagePath: item.imageUrl,
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.h),
              width: 330.w,
              height: 140.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF8EDE3),
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 4)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rekomendasi Resep",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Resep rekomendasi khusus untukmu",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Image.asset(
                        'assets/sendok-garpu.png',
                        width: 35.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) =>
                                CustomFormDialog(),
                          );
                        },
                        child: Container(
                          width: 130.w,
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 25.w),
                          decoration: BoxDecoration(
                            color: const Color(0xFFC5705D),
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: const Center(
                            child: Text(
                              "Mulai!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 130.w,
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 25.w),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDFD3C3),
                            borderRadius: BorderRadius.circular(40.r),
                          ),
                          child: const Center(
                            child: Text(
                              "Lewati",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "Resep Terbaru",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: const Color(0xFFC5705D),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150.h,
            margin: EdgeInsets.only(left: 15.h, right: 20.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return CardMakanan(
                  description: menuItems[index].title,
                  imagePath: menuItems[index].imageUrl,
                );
              },
            ),
          ),
          SizedBox(
            height: 100.h,
          )
        ],
      ),
    );
  }

  Widget _buildTabButton(String label, int index) {
    bool isActive = _currentTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentTabIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFFC5705D) : const Color(0xFFF8EDE3),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : const Color(0xFFC5705D),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
