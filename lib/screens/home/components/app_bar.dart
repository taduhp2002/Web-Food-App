import 'package:flutter/material.dart';
import 'package:web_food_app/components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              height: 25,
              alignment: Alignment.topCenter,
            ),
            const SizedBox(width: 5),
            Text(
              "Foodi".toUpperCase(),
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20),
            MenuItem(
              title: "Home",
              press: () {},
            ),
            const SizedBox(width: 20),
            MenuItem(
              title: "About",
              press: () {},
            ),
            const SizedBox(width: 20),
            MenuItem(
              title: "Pricing",
              press: () {},
            ),
            const SizedBox(width: 20),
            MenuItem(
              title: "Contact",
              press: () {},
            ),
            const SizedBox(width: 20),
            MenuItem(
              title: "Login",
              press: () {},
            ),
            const SizedBox(width: 20),
            DefaultButton(
              text: "Get Started",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
