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

      body: PersistentTabView(

        tabs: [
          PersistentTabConfig(

            screen: const HomePage(),
            item: ItemConfig(
              icon: const Icon(Icons.home_filled),
              activeForegroundColor: const Color(0xffC58BF2),
            ),
          ),
          PersistentTabConfig(
            screen: const Steps(),
            item: ItemConfig(
              icon: const Icon(Iconsax.activity),
              activeForegroundColor: const Color(0xffC58BF2),
            ),
          ),
          PersistentTabConfig(
            screen: const Notifications(),
            item: ItemConfig(
              icon: const Icon(Iconsax.notification),
              activeForegroundColor: const Color(0xffC58BF2),
            ),
          ),
          PersistentTabConfig(
            screen: const Profile(),
            item: ItemConfig(
              icon: const Icon(Iconsax.profile_circle5),
              activeForegroundColor: const Color(0xffC58BF2),
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style10BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: const NavBarDecoration(

          ),
        ),
      ),
    );
  }
}
