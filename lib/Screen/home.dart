// ignore_for_file:prefer_typing_uninitialized_variables
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/tabbar.dart';
import '../widgets/appbar.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
    return ListView(
      children: [
        // const Padding(
        //   padding: EdgeInsets.all(16.0),
        //   child: Card(
        //     child: Padding(
        //       padding: EdgeInsets.all(16.0),
        //       child: Text(
        //         "App is on the beta version. Notes, syllabus and questions of all faculty will be uploaded soon.",
        //         style: TextStyle(color: appcolor),
        //         textScaleFactor: 1.1,
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //   ),
        // ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 190,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTabBar()));
                },
              ),
              MyGridView(
                nameText: 'Computer',
                myImage: 'assest/img/Computer.png',
                tapHere: () {
                  titletext = 'Computer';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTabBar()));
                },
              ),
              MyGridView(
                nameText: 'Electrical',
                myImage: 'assest/img/Electrical.png',
                tapHere: () {
                  titletext = 'Electrical';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyTabBar()));
                },
              ),
              MyGridView(
                  nameText: 'Electronics',
                  myImage: 'assest/img/Electronics.png',
                  tapHere: () {
                    titletext = "Electronics";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyTabBar()));
                  }),
            ],
          ),
        ),
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
