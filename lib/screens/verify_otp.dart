import 'package:flutter/material.dart';
import 'package:groceryus_app/screens/splash_screen.dart';

class VerifyOTPPage extends StatefulWidget {
  const VerifyOTPPage({Key? key}) : super(key: key);

  @override
  State<VerifyOTPPage> createState() => _VerifyOTPPageState();
}

class _VerifyOTPPageState extends State<VerifyOTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffcb),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/verify_phone.png",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "OTP VERIFICATION",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Please Enter OTP",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your OTP",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1))),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SplashScreen()));
                  },
                  child: const Text('Verify')),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
