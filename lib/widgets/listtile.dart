// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'mydrawer.dart';

class CustomListTile extends StatelessWidget {
  final customicon;
  String customtext;
  final followlink;

  CustomListTile(
      {Key? key,
      this.customicon,
      required this.customtext,
      required this.followlink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: followlink,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 35,
          child: Row(
            children: [
              Icon(
                customicon,
                color: appcolor,
                size: 28,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                customtext,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, color: appcolor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
