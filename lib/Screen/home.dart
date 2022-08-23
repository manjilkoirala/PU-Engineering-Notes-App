// ignore_for_file:prefer_typing_uninitialized_variables, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import 'package:pufoe_notes/widgets/ad_helper.dart';
import 'package:upgrader/upgrader.dart';

import '../widgets/appbar.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: const MyAppBar(
          height: 50.0,
          title: 'PUFOE Notes',
        ),
        body: UpgradeAlert(
            upgrader: Upgrader(
                showIgnore: false,
                shouldPopScope: () => true,
                durationUntilAlertAgain: const Duration(minutes: 10)),
            child: const MyListView()),
        bottomNavigationBar: SizedBox(
          height: getbannerAd().size.height.toDouble(),
          width: getbannerAd().size.width.toDouble(),
          child: AdWidget(
            ad: getbannerAd(),
          ),
        ));
  }
}

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
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
