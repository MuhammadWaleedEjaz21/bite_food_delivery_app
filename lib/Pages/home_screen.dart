import 'package:bite_food_delivery/Widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final addressProvider = Provider<String>(
  (ref) => '18 A Shalimar Colony Bosan Road Multan',
);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        leading: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'DELIVER TO',
            style: GoogleFonts.sen(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          subtitle: Consumer(
            builder: (context, ref, _) {
              final address = ref.watch(addressProvider);
              return Text(
                address,
                style: GoogleFonts.sen(fontSize: 15.sp, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
              );
            },
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
