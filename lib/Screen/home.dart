// ignore_for_file: prefer_const_constructors, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/mydrawer.dart';

const Color appcolor = Color.fromARGB(255, 45, 45, 45);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(
        backcolor: appcolor,
        title: 'PU Notes',
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
        crossAxisCount: 2,
      ),
      children: [
        MyGridView(
          nameText: 'Civil',
        ),
        MyGridView(nameText: 'Computer'),
        MyGridView(nameText: 'Electrical'),
        MyGridView(nameText: 'Electronics'),
      ],
    );
  }
}

class MyGridView extends StatelessWidget {
  String nameText;
  MyGridView({Key? key, this.nameText = 'Hello'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assest/img/Logo.png',
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
    );
  }
}
