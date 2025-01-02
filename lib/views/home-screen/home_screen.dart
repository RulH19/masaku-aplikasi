import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/no-content.png'),
          Text(
            "uh-oh!",
            style: TextStyle(fontSize: 20.sp, color: const Color(0xFFC5705D)),
          ),
          Text(
            "Halaman tidak dapat ditemukan",
            style: TextStyle(fontSize: 20.sp, color: const Color(0xFFC5705D)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Maaf, halaman yang kamu tuju tidak",
            style: TextStyle(fontSize: 16.sp, color: const Color(0xFFC5705D)),
          ),
          Text(
            "dapat ditemukan",
            style: TextStyle(fontSize: 16.sp, color: const Color(0xFFC5705D)),
          ),
        ],
      ),
    );
  }
}
