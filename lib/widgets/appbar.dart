// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final button;
  final height;
  final action;

  const MyAppBar(
      {Key? key,
      required this.title,
      this.button,
      required this.height,
      this.action})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      title: Text(title),
      bottom: button,
      actions: action,
    );
  }
}
