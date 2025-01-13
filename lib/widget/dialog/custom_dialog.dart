import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masaku/widget/dialog/symptoms_dialog.dart';

class CustomFormDialog extends StatefulWidget {
  @override
  _CustomFormDialogState createState() => _CustomFormDialogState();
}

class _CustomFormDialogState extends State<CustomFormDialog> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  String selectedGender = 'Pilih';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Kita cek dulu yaa",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFFC5705D),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "isi form di bawah ini untuk mendapatkan hasil rekomendasi ya~",
                style:
                    TextStyle(fontSize: 12.sp, color: const Color(0xFFC5705D)),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Informasi Dasar",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: const Color(0xFFC5705D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Usia",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xFFC5705D)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                    hintText: "Masukkan Umur",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal),
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: const Color(0xFFC5705D)),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Jenis Kelamin",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xFFC5705D)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                DropdownButtonFormField<String>(
                  value: selectedGender,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: const Color(0xFFD0B8A8), width: 1.w)),
                  ),
                  iconEnabledColor: const Color(0xFFC5705D),
                  items: ['Pilih', 'Laki-laki', 'Perempuan']
                      .map((gender) => DropdownMenuItem<String>(
                          value: gender,
                          child: Text(
                            gender,
                            style: TextStyle(
                              color: gender == 'Pilih'
                                  ? Colors.grey
                                  : const Color(0xFFC5705D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          )))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                SizedBox(height: 10.h),
                Text(
                  "Berat Badan",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xFFC5705D)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      hintText: "Masukkan Berat Badan",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: const Color(0xFFC5705D)),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Tinggi Badan",
                  style: TextStyle(
                      fontSize: 14.sp, color: const Color(0xFFC5705D)),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  controller: heightController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: const Color(0xFFD0B8A8), width: 1.w)),
                      hintText: "Masukkan Tinggi Badan",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal)),
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: const Color(0xFFC5705D)),
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => SymptomsFormDialog(),
                );
              },
              child: Container(
                width: 130.w,
                margin: EdgeInsets.only(top: 50.h),
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFC5705D),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Selanjutnya",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 50.w,
          top: 80.h,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/close-circle.png",
              width: 25.w,
            ),
          ),
        ),
      ],
    );
  }
}
