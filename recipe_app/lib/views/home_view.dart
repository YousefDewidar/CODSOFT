import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/views/all_recipes_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffFFF2CC),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/food-13646 1.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Cook Together,',
              style: TextStyle(
                  height: 1,
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              'Stay Together',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Let's join our community\nto cook better food!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AllRecipesView.id, (route) => false);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
