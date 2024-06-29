import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/widgets/play_music_card.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Card(
          color: const Color.fromARGB(110, 34, 29, 62),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/35228-3-pizza-slice-file.png',
                  height: 60,
                  width: 80,
                ),
                space(15, dir: 'h'),

                // track name & time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Home Eyes', style: Style.bold16white),
                    Row(
                      children: [
                        Text('singer | ', style: Style.greyText),
                        Text('3:06', style: Style.greyText),
                      ],
                    ),
                  ],
                ),

                const Spacer(),

                const PlayCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
