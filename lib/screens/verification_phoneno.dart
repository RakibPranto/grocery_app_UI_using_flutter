import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:groceryus_app/screens/verify_otp.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
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
                          "assets/images/pp1.jpg",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "VERIFY YOUR PHONE NUMBER",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Enter Your Phone Number",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 2,
                      child:
                          Flag.fromCode(FlagsCode.BD, height: 20, width: 60)),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "+880",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                  const Expanded(
                    flex: 8,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone number",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VerifyOTPPage()));
                  },
                  child: const Text('Send OTP')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Home')),
            ],
          ),
        ),
      ),
    );
  }
}
