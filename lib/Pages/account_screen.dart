import 'package:bite_food_delivery/Widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Account',
            style: GoogleFonts.sen(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.grey.shade300),
            icon: Icon(Icons.more_horiz, size: 30.r, color: Colors.black),
          ),
          15.horizontalSpace,
        ],
      ),
    );
  }
}
