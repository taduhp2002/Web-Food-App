import 'package:flutter/material.dart';
import 'package:web_food_app/Screens/Home/components/app_bar.dart';
import 'package:web_food_app/Screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              SizedBox(height: 25), // Add some spacing between AppBar and Body
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
