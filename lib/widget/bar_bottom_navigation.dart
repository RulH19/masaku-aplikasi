import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/views/home-screen/home_screen.dart';
import 'package:masaku/views/info-screen/info_aplikasi_screen.dart';
import 'package:masaku/views/kategori-screen/kategori_screen.dart';
import 'package:masaku/views/notifikasi-screen/notifikasi_screen.dart';
import 'package:masaku/views/profile-screen/profile_screen.dart';
import 'package:masaku/views/profile-screen/pusat_bantuan_screen.dart';

class BarBottomNavigation extends StatefulWidget {
  const BarBottomNavigation({super.key});

  @override
  State<BarBottomNavigation> createState() => _BarBottomNavigationState();
}

class _BarBottomNavigationState extends State<BarBottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const KategoriScreen(),
    const NotifikasiScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: _currentIndex,
              children: _screens,
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            bottom: 20.0,
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 4)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(
                    imagePath: "assets/home.png",
                    label: "Home",
                    index: 0,
                  ),
                  _buildNavItem(
                    imagePath: "assets/category.png",
                    label: "Category",
                    index: 1,
                  ),
                  _buildNavItem(
                    imagePath: "assets/notification-bing.png",
                    label: "Notification",
                    index: 2,
                  ),
                  _buildNavItem(
                    imagePath: "assets/user-square.png",
                    label: "Profil",
                    index: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      {required String imagePath, required String label, required int index}) {
    bool isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: isActive
          ? Container(
              height: 40.h,
              width: 120.w,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: const Color(0xFFDFD3C3),
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 24.w,
                    height: 24.h,
                    color: isActive ? Colors.black : Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      label,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : SizedBox(
              height: 40.h,
              child: Image.asset(
                imagePath,
                width: 24.0,
                height: 24.0,
                color: isActive ? Colors.blue : Colors.grey,
              ),
            ),
    );
  }
}
