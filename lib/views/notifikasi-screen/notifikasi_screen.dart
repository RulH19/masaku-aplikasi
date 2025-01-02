import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifikasiScreen extends StatelessWidget {
  const NotifikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Notifikasi",
            style: TextStyle(
                fontSize: 24.sp,
                color: const Color(0xFFC5705D),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: const Color(0xFFF8EDE3),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color(0xFFC5705D),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(text: 'Semua'),
                  Tab(text: 'Dibaca'),
                  Tab(text: 'Belum Dibaca'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SemuaNotifikasi(),
            DibacaNotifikasi(),
            BelumDibacaNotifikasi(),
          ],
        ),
      ),
    );
  }
}

class SemuaNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Resepnya sudah masuk ke favorit ya~'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Kemarin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Resepnya sudah masuk ke favorit ya~'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
        ],
      ),
    );
  }
}

class DibacaNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Resepnya sudah masuk ke favorit ya~'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Kemarin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Resepnya sudah masuk ke favorit ya~'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
        ],
      ),
    );
  }
}

class BelumDibacaNotifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('10 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Ada resep baru nih!'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Resepnya sudah masuk ke favorit ya~'),
            subtitle: Text(
                'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
            trailing: Text('30 mins ago'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Kemarin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
              title: Text('Resepnya sudah masuk ke favorit ya~'),
              subtitle: Text(
                  'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
              trailing: Icon(Icons.notifications)),
          ListTile(
              title: Text('Resepnya sudah masuk ke favorit ya~'),
              subtitle: Text(
                  'Lorem Ipsum tempor incididunt ut labore, in voluptate velit esse cillum'),
              trailing: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}
