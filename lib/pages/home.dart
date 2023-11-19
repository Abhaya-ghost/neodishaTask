import 'package:flutter/material.dart';
import 'package:neodisha/pages/account.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;

  final screens = [
    MainHome(),
    Center(
      child: Icon(
        Icons.favorite,
        size: 100,
        color: Colors.red,
      ),
    ),
    MyAccount(),
    Center(
      child: Icon(
        Icons.shop,
        size: 100,
        color: Colors.blueAccent,
      ),
    ),
    Center(
      child: Icon(
        Icons.settings,
        size: 100,
        color: Colors.grey,
      ),
    ),
  ];

  NavigationDestinationLabelBehavior labelBehave =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(45), topRight: Radius.circular(45)),
        child: NavigationBar(
          height: 110,
          backgroundColor: Color(0xff03afb6),
          indicatorColor: Colors.transparent,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                label: 'Favorite'),
            NavigationDestination(
                icon: Icon(
                  Icons.person_2_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                label: 'Profile'),
            NavigationDestination(
                icon: Icon(
                  Icons.shop_2_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                label: 'Search'),
            NavigationDestination(
              icon: Icon(
                Icons.settings_outlined,
                size: 40,
                color: Colors.white,
              ),
              label: 'Settings',
            ),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          animationDuration: Duration(milliseconds: 1000),
          labelBehavior: labelBehave,
        ),
      ),
    );
  }
}

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Card(
          child: Text(
            'Home Page',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
