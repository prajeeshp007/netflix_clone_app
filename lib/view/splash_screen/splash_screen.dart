import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/image_constance.dart';

import 'package:netflix_clone_app/view/home_screen/user_nmae_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserNmaeScreen(),
            ));
      },
    );
    print('NETFLIX');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(ImageConstance.LOGO_PNG),
      ),
    );
  }
}
