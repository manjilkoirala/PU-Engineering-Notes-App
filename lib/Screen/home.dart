// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:punotes/Screen/tabbar.dart';

import '../widgets/appbar.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(
        height: 50.0,
        title: 'PUFOE Notes',
      ),
      body: HomePageBody(),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
      ),
      children: [
        MyGridView(
          nameText: 'Civil',
          myImage: 'assest/img/Civil.png',
          tapHere: () {
            titletext = 'Civil';
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyTabBar()));
          },
        ),
        MyGridView(
          nameText: 'Computer',
          myImage: 'assest/img/Computer.png',
          tapHere: () {
            titletext = 'Computer';
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyTabBar()));
          },
        ),
        MyGridView(
          nameText: 'Electrical',
          myImage: 'assest/img/Electrical.png',
          tapHere: () {
            titletext = 'Electrical';
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyTabBar()));
          },
        ),
        MyGridView(
            nameText: 'Electronics',
            myImage: 'assest/img/Electronics.png',
            tapHere: () {
              titletext = 'Electronics';
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyTabBar()));
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
            SizedBox(
              height: 10,
            ),
            Text(
              nameText.toString(),
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
