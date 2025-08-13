import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppbar extends ConsumerWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool backButton;
  final bool blackTheme;
  const CustomAppbar({super.key,this.leading,this.title,this.actions,this.backButton=false,this.blackTheme=false});

  @override
  Size get preferredSize => Size.fromHeight(100.h);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: backButton ? IconButton(onPressed: (){},style: IconButton.styleFrom(backgroundColor: Colors.grey.shade300,padding: EdgeInsets.only(left: 17.w,top: 10.h,bottom: 10.h,right: 10.w)) ,icon: Icon(Icons.arrow_back_ios,size: 30.r,color: blackTheme?Colors.white:Colors.black,)) : leading,
      title: title,
      actions: actions,
      elevation: 0,
      leadingWidth: 80.w,
    );
  }
}
