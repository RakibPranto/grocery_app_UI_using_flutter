import 'package:flutter/material.dart';
import 'package:groceryus_app/screens/custom_btm_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      isVisible = false;
      // Navigator.push(context, MaterialPageRoute(builder: (_) => CustomButtomNavBar()));
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const CustomButtomNavBar()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/fullscreen.png',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              child: const CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 5,
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
