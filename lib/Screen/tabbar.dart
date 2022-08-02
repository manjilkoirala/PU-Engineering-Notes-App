// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:punotes/Screen/home.dart';
import 'package:punotes/Screen/pdfviwer.dart';
import 'package:punotes/widgets/appbar.dart';
import 'package:punotes/widgets/mydrawer.dart';

var titletext;

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: MyAppBar(
          height: 80.0,
          title: titletext,
          button: TabBar(tabs: [
            Text(
              'Syllabus',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Notes',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Questions',
              style: TextStyle(fontSize: 18),
            )
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TabBarView(children: [
            CustomListView(
              followlink1: () {
                if (titletext == 'Computer') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              followlink2: () {
                if (titletext == 'Computer') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PDFViewerPage(
                                title: "2nd Semester Computer",
                              )));
                }
              },
            ), //Syllabus

            CustomListView(), //Notes

            CustomListView(), //Question
          ]),
        ),
      ),
    );
  }
}

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
        CustomTile(customtext: 'Eight Semester', followlink: followlink8),
      ],
    );
  }
}

class CustomTile extends StatelessWidget {
  String customtext;
  final followlink;

  CustomTile({Key? key, required this.customtext, required this.followlink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: followlink,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 215, 215, 215)))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  customtext,
                  style: TextStyle(fontSize: 18, color: appcolor),
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
