import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:untitled5/Home/Activity/Radial.dart';
import 'package:untitled5/Home/Activity/steps.dart';
import 'package:untitled5/Home/home_page.dart';
import 'package:untitled5/Home/user_food/api_meals.dart';
import 'package:untitled5/Home/user_food/food_card.dart';
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
            screen: HomePage(),
            item: ItemConfig(
              icon: Icon(Icons.home_filled),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: Steps(),
            item: ItemConfig(
              icon: Icon(Iconsax.activity),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: NotificationsHome(
            ),
            item: ItemConfig(
              icon: Icon(Iconsax.notification),
              activeForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen:Radial(),
            item: ItemConfig(
              icon: Icon(Iconsax.profile_circle5),
              activeForegroundColor: Colors.white,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style10BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            color: Color(0xff505050),
          ),
        ),
      ),
    );
  }
}
