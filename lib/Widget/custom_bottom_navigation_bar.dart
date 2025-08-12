import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

final bottomNavigationProvider = StateProvider((ref) {
  return 0;
});

class CustomBottomNavigationBar extends ConsumerWidget {
  final List<CustomBottomBarItem> items;
  const CustomBottomNavigationBar({super.key, required this.items});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavigationProvider);
    return Consumer(
      builder: (context, ref, child) {
        return StylishBottomBar(
          items: items
              .map(
                (item) => BottomBarItem(
                  icon: Icon(item.icon),
                  title: Text(item.title),
                  selectedIcon: Icon(item.selectedicon),
                  unSelectedColor: Colors.grey,
                  selectedColor: Colors.orange,
                ),
              )
              .toList(),
          currentIndex: selectedIndex,
          onTap: (value) {
            ref.read(bottomNavigationProvider.notifier).state = value;
          },
          option: BubbleBarOptions(
            barStyle: BubbleBarStyle.horizontal,
            bubbleFillStyle: BubbleFillStyle.fill,
            opacity: .3,
          ),
        );
      },
    );
  }
}

class CustomBottomBarItem {
  final String title;
  final IconData icon;
  final IconData selectedicon;
  final Widget pages;

  CustomBottomBarItem({
    required this.title,
    required this.icon,
    required this.selectedicon,
    required this.pages,
  });
}
