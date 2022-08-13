// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:pufoe_notes/Screen/about.dart';
import 'package:share/share.dart';
import 'package:store_redirect/store_redirect.dart';

import 'listtile.dart';

const Color appcolor = Color(0xFF444444);

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(
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
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'PUFOE Notes',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            )),
        CustomListTile(
            customicon: Icons.send_sharp,
            customtext: 'Send Notes',
            followlink: () async {
              await OpenMailApp.composeNewEmailInMailApp(
                  emailContent: EmailContent(
                      to: ['manjilkoirala7@gmail.com'], subject: 'Notes'));
            }),
        CustomListTile(
          customicon: Icons.share_outlined,
          customtext: 'Share',
          followlink: () {
            Share.share(
                'https://play.google.com/store/apps/details?id=com.techlearnhere.pufoenotes');
          },
        ),
        CustomListTile(
          customicon: Icons.star_border_outlined,
          customtext: 'Rate Us',
          followlink: () {
            StoreRedirect.redirect(
                androidAppId: "com.techlearnhere.pufoenotes");
          },
        ),
        CustomListTile(
          customicon: Icons.info_outline,
          customtext: 'About',
          followlink: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutApp()));
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
