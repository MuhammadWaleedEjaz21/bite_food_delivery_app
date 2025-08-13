import 'package:bite_food_delivery/Pages/account_screen.dart';
import 'package:bite_food_delivery/Pages/home_screen.dart';
import 'package:bite_food_delivery/Pages/search_screen.dart';
import 'package:bite_food_delivery/Widget/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<CustomBottomBarItem> screens = [
      CustomBottomBarItem(
        title: 'Home',
        icon: Icons.home_outlined,
        selectedicon: Icons.home,
        pages: HomeScreen(),
      ),
      CustomBottomBarItem(
        title: 'Search',
        icon: Icons.search_outlined,
        selectedicon: Icons.search,
        pages: SearchScreen(),
      ),
      CustomBottomBarItem(
        title: 'Account',
        icon: Icons.person_outlined,
        selectedicon: Icons.person,
        pages: AccountScreen(),
      ),
    ];
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Consumer(
              builder: (context, ref, child) {
                final selectedIndex = ref.watch(bottomNavigationProvider);
                return screens[selectedIndex].pages;
              },
            ),
            bottomNavigationBar: CustomBottomNavigationBar(items: screens),
          ),
        ),
      ),
    );
  }
}
