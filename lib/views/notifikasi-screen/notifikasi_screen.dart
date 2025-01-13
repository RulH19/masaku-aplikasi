import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifikasiScreen extends StatefulWidget {
  const NotifikasiScreen({Key? key}) : super(key: key);

  @override
  State<NotifikasiScreen> createState() => _NotifikasiScreenState();
}

class _NotifikasiScreenState extends State<NotifikasiScreen> {
  int _currentTabIndex = 0;

  final List<Widget> _tabs = [
    SemuaNotifikasi(),
    DibacaNotifikasi(),
    BelumDibacaNotifikasi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Notifikasi",
          style: TextStyle(
              fontSize: 24.sp,
              color: const Color(0xFFC5705D),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.h),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTabButton("Semua", 0),
                SizedBox(
                  width: 5.h,
                ),
                _buildTabButton("Dibaca", 1),
                SizedBox(
                  width: 5.h,
                ),
                _buildTabButton("Belum Dibaca", 2),
              ],
            ),
            Expanded(
              child: IndexedStack(
                index: _currentTabIndex,
                children: _tabs,
              ),
            ),
          ],
        ),
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

class SemuaNotifikasi extends StatelessWidget {
  const SemuaNotifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            child: Text('Hari Ini'),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.h),
          decoration: BoxDecoration(
            color: const Color(0xFFF8EDE3),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
        ),
      ],
    );
  }
}

class DibacaNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Dibaca Notifikasi"));
  }
}

class BelumDibacaNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Belum Dibaca Notifikasi"));
  }
}
