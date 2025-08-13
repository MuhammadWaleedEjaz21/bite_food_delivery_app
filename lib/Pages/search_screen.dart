import 'package:bite_food_delivery/Widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Search',
            style: GoogleFonts.sen(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.black),
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 30.r,
              color: Colors.white,
            ),
          ),
          15.horizontalSpace,
        ],
      ),
    );
  }
}
