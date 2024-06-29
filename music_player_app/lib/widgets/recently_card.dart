import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';

class RecentlyTrackCard extends StatelessWidget {
  const RecentlyTrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Card(
          color: const Color.fromARGB(110, 34, 29, 62),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
          child: Container(
            width: 145,
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 3),
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Image.asset(
                    'assets/35228-3-pizza-slice-file.png',
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                space(10),
                Text('Home Eyes', style: Style.bold16white),
                Text('singer', style: Style.greyText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
