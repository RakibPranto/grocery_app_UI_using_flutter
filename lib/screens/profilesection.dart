import 'package:flutter/material.dart';
import 'package:groceryus_app/screens/login_page.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe6f2ff),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color(0xffe6f2ff),
        title: const Text("PROFILE",
            style: TextStyle(color: Colors.black, fontSize: 30)),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                elevation: 3,
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 25,
                    ))),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        left: 0,
                        top: 50,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white,
                            ),
                          ),
                        )),
                    Positioned(
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    spreadRadius: 2),
                              ],
                            ),
                            child: const CircleAvatar(
                              radius: 60,
                            ),
                          ),
                          const Text(
                            "Pallab Mistry",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: const Text("Are you sure?"),
                                          content: const Text(
                                              "Do you want to exit from the\napp?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const loginPage())),
                                                child: const Text("YES")),
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: const Text("NO")),
                                          ],
                                        ));
                              },
                              child: const Text(
                                "Log Out",
                                style: TextStyle(
                                    color: Color(0xff2196f3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: const Text(
                'Order History',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: Colors.deepOrange,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.history,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: const Text(
                'Delivery adress',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: Colors.deepOrange,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.home_work,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: const Text(
                'Cards & payments',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: Colors.deepOrange,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: const Text(
                'Tracking my order',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: Colors.deepOrange,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.gps_fixed,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
