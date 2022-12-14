// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pufoe_notes/widgets/mydrawer.dart';

class CustomListView extends StatelessWidget {
  final followlink1;
  final followlink2;
  final followlink3;
  final followlink4;
  final followlink5;
  final followlink6;
  final followlink7;
  final followlink8;

  const CustomListView(
      {Key? key,
      this.followlink1,
      this.followlink2,
      this.followlink3,
      this.followlink4,
      this.followlink5,
      this.followlink6,
      this.followlink7,
      this.followlink8})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomTile(customtext: 'First Semester', followlink: followlink1),
        CustomTile(customtext: 'Second Semester', followlink: followlink2),
        CustomTile(customtext: 'Third Semester', followlink: followlink3),
        CustomTile(customtext: 'Fourth Semester', followlink: followlink4),
        CustomTile(customtext: 'Fifth Semester', followlink: followlink5),
        CustomTile(customtext: 'Sixth Semester', followlink: followlink6),
        CustomTile(customtext: 'Seventh Semester', followlink: followlink7),
        CustomTile(customtext: 'Eighth Semester', followlink: followlink8),
      ],
    );
  }
}

class CustomTile extends StatelessWidget {
  String customtext;
  final followlink;

  CustomTile({Key? key, required this.customtext, this.followlink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: followlink,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 215, 215, 215)))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    customtext,
                    style: const TextStyle(fontSize: 18, color: appcolor),
                  ),
                ),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
