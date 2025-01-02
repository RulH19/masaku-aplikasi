import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardMakanan extends StatelessWidget {
  final String description;
  final String imagePath;

  const CardMakanan({
    super.key,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(5.r),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: getImageProvider(imagePath), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105.h,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    description,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

ImageProvider getImageProvider(String imageUrl) {
  return NetworkImage(imageUrl);
}
