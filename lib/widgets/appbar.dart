import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final backcolor;
  const MyAppBar({
    Key? key,
    required this.title,
    required this.backcolor,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: backcolor,
      title: Text(title),
    );
  }
}
