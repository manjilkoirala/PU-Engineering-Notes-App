// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pufoe_notes/Screen/home.dart';
import 'package:pufoe_notes/widgets/mydrawer.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 200,
              width: 200,
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
              height: 10,
            ),
            const Text(
              "PUFOE Notes",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
