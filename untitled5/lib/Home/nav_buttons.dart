import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:untitled5/Home/Activity/steps.dart';
import 'package:untitled5/Home/Profile/profile.dart';
import 'package:untitled5/Home/home_page.dart';
import 'package:untitled5/notifications/notifications.dart';

class NavButtons extends StatefulWidget {
  const NavButtons({super.key});

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: PersistentTabView(
        backgroundColor: Colors.black,
        tabs: [
          PersistentTabConfig(
            screen: const HomePage(),
            item: ItemConfig(
              icon: const Icon(Icons.home_filled),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: const Steps(),
            item: ItemConfig(
              icon: const Icon(Iconsax.activity),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: const Notifications(),
            item: ItemConfig(
              icon: const Icon(Iconsax.notification),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: const Profile(),
            item: ItemConfig(
              icon: const Icon(Iconsax.profile_circle5),
              activeForegroundColor: Colors.white,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style10BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: const NavBarDecoration(
            color: Color(0xff1C1C1E),
          ),
        ),
      ),
    );
  }
}
