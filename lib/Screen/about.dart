import 'package:flutter/material.dart';
import 'package:punotes/widgets/appbar.dart';
import 'package:punotes/widgets/mydrawer.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'About',
        height: 50.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Center(
              child: Text(
                'ABOUT DEVELOPER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Center(
                    child: Card(
                      color: appcolor,
                      clipBehavior: Clip.antiAlias,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'assest/img/manjil.jpg',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Manjil Koirala',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text('BE Computer', style: TextStyle(fontSize: 18)),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'PUSOE, Biratnagar',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'DISCLAIMER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              '"PUFOE Notes" is created only for educational purpose.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "All the notes in this app are collected from different websites, teacher's notes and student's handwritten notes.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "If any of your notes are included in this app and you don't want it to be here, you can directly email me at koiralamanjil7@gmail.com and I will remove it.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
