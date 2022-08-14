// ignore_for_file:prefer_typing_uninitialized_variables, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/widgets/ad_helper.dart';
import '../widgets/appbar.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: const MyAppBar(
          height: 50.0,
          title: 'PUFOE Notes',
        ),
        body: const HomePageBody(),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: AdWidget(
            ad: getbannerAd(),
          ),
        ));
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const MyText(), const MyListView()],
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          MyGridView(
            nameText: 'Civil',
            myImage: 'assest/img/Civil.png',
            tapHere: () {
              titletext = 'Civil';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyTabBar()));
            },
          ),
          MyGridView(
            nameText: 'Computer',
            myImage: 'assest/img/Computer.png',
            tapHere: () {
              titletext = 'Computer';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyTabBar()));
            },
          ),
          MyGridView(
            nameText: 'Electrical',
            myImage: 'assest/img/Electrical.png',
            tapHere: () {
              titletext = 'Electrical';
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyTabBar()));
            },
          ),
          MyGridView(
              nameText: 'Electronics',
              myImage: 'assest/img/Electronics.png',
              tapHere: () {
                titletext = "Electronics";
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyTabBar()));
              }),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "App is on the beta version. Notes, syllabus and questions of all faculty will be uploaded soon.",
          style: TextStyle(color: appcolor),
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  final nameText;
  final myImage;
  final tapHere;
  const MyGridView({Key? key, this.nameText, this.myImage, this.tapHere})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: tapHere,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              myImage,
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              nameText.toString(),
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
