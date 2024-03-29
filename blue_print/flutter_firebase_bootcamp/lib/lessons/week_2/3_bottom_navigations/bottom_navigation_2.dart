import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigation2 extends StatelessWidget {
  const BottomNavigation2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Home Page")),
        bottomNavigationBar: PersistentTabView(
          context,
          screens: const [
            Home(),
            OrdersPage(),
            SettingsPage(),
            ProfilePage(),
            ServicesPage(),
          ],
          backgroundColor: Colors.blue,
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home),
              title: ("Home"),
              activeColorSecondary: Colors.black,
              activeColorPrimary: Colors.white,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.reorder),
              title: ("Orders"),
              activeColorSecondary: Colors.black,
              activeColorPrimary: Colors.white,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.settings),
              title: ("Settings"),
              activeColorSecondary: Colors.black,
              activeColorPrimary: Colors.white,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.account_circle_rounded),
              title: ("Profile"),
              activeColorSecondary: Colors.black,
              activeColorPrimary: Colors.white,
              inactiveColorPrimary: Colors.grey[400],
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.medical_services_outlined),
              title: ("Services"),
              activeColorSecondary: Colors.black,
              activeColorPrimary: Colors.white,
              inactiveColorPrimary: Colors.grey[400],
            ),
          ],
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          navBarStyle: NavBarStyle.style7,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
    );
  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders Page"),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SettingsPage"),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfilePage"),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ServicesPage"),
      ),
    );
  }
}
