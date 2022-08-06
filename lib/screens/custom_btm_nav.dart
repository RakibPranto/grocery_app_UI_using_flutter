import 'package:flutter/material.dart';
import 'package:groceryus_app/screens/home_page.dart';
import 'package:groceryus_app/screens/profilesection.dart';
import 'package:groceryus_app/screens/recipe_page.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  List pages = [const HomePage(), const RecipePage(), const ProfileSection()];
  bool isSelected = true;

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    willLeave = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              content: const Text('Do you want to exit from \nthis app'),
              backgroundColor: const Color(0xFFFFD741),
            ),
          );
          return willLeave;
        },
        child: Scaffold(
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? const CircleAvatar(
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                        child: Icon(
                          Icons.home,
                          size: 40,
                        ),
                      )
                    : const Icon(
                        Icons.home,
                        size: 40,
                      ),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? const CircleAvatar(
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40,
                        ),
                      )
                    : const Icon(
                        Icons.restaurant_menu,
                        size: 40,
                      ),
                label: 'Recipe',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? const CircleAvatar(
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                        child: Icon(
                          Icons.perm_contact_calendar_outlined,
                          size: 40,
                        ),
                      )
                    : const Icon(
                        Icons.person_outline_outlined,
                        size: 40,
                      ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFFFFD741),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedFontSize: 16,
            selectedFontSize: 16,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ));
  }
}
