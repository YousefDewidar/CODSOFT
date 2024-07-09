import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationWord;
  late Animation<Offset> animationImg;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    animationImg = Tween<Offset>(begin: const Offset(0, -.9), end: Offset.zero)
        .animate(animationController);

    animationWord = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();

    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeView()));
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b4332),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SlideTransition(
            position: animationImg,
            child: Image.asset(
              'assets/—Pngtree—notepad mission icon task item_6635689.png',
              // width: 250,
              height: 250,
            ),
          ),
          SlideTransition(
            position: animationWord,
            child: const Text(
              'TODO LIST',
              style: TextStyle(
                  color: Color.fromARGB(255, 215, 215, 211), fontSize: 35),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
