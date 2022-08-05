// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:punotes/Screen/about.dart';
import 'package:share/share.dart';

const Color appcolor = Color.fromARGB(255, 68, 68, 68);

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 57, 57, 57), appcolor]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 94,
                  width: 94,
                  child: Card(
                    color: appcolor,
                    clipBehavior: Clip.antiAlias,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assest/img/Logo.png'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'PU Engineering Notes',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            )),
        CustomListTile(
          customicon: Icons.notifications_none,
          customtext: 'PUSOE Notice',
          followlink: () {
            Navigator.pop(context);
          },
        ),
        CustomListTile(
          customicon: Icons.share_outlined,
          customtext: 'Share',
          followlink: () {
            Share.share(
                'https://play.google.com/store/apps/details?id=com.techlearnhere.nepresults');
          },
        ),
        CustomListTile(
          customicon: Icons.star_border_outlined,
          customtext: 'Rate Us',
          followlink: () {
            Navigator.pop(context);
          },
        ),
        CustomListTile(
          customicon: Icons.info_outline,
          customtext: 'About',
          followlink: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutApp()));
          },
        ),
        CustomListTile(
          customicon: Icons.exit_to_app_outlined,
          customtext: 'Back',
          followlink: () {
            Navigator.pop(context);
          },
        )
      ],
    ));
  }
}

//CustomList

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
          height: 40,
          child: Row(
            children: [
              Icon(
                customicon,
                color: appcolor,
                size: 28,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                customtext,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: appcolor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
