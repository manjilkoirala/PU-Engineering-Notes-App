//  prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:pufoe_notes/widgets/appbar.dart';
import 'package:pufoe_notes/widgets/tabbar%20view/notes.dart';
import 'package:pufoe_notes/widgets/tabbar%20view/questions.dart';

import '../widgets/ad_helper.dart';
import '../widgets/tabbar view/syllabus.dart';

var titletext;

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar:
            SizedBox(height: 60, child: AdWidget(ad: getbannerAd())),
        appBar: MyAppBar(
          height: 82.0,
          title: titletext,
          button: const TabBar(tabs: [
            Text(
              'Syllabus',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Notes',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Questions',
              style: TextStyle(fontSize: 16),
            )
          ]),
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: TabBarView(
              children: [SyllabusList(), NoteList(), QuestionsList()]),
        ),
      ),
    );
  }
}
