import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/widgets/play_music_card.dart';

class FloatingPlayCard extends StatelessWidget {
  const FloatingPlayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 8,
      right: 8,
      child: GlassmorphicContainer(
        width: 345,
        height: 70,
        borderRadius: 30,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(8, 225, 225, 225).withOpacity(0.1),
            Colors.white.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 14,
        borderGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Col.blueCol, Col.pinkCol],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
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
    );
  }
}
