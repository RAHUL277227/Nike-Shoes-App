import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GNav(
        onTabChange: onTabChange,
        tabBorderRadius: 15,
        tabBackgroundColor: Colors.white,
        activeColor: Colors.grey.shade700,
        color: Colors.grey[400],
        tabActiveBorder: Border.all(color: Colors.grey.shade300),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
        GButton(icon: Icons.home,text: "Home",),
        GButton(icon: Icons.shopping_cart,text: "Cart",),
      ]),
    );
  }
}