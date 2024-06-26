import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/views/all_tracks.dart';
import 'package:music_player_app/widgets/custom_button.dart';
import 'package:music_player_app/widgets/decoration_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.backgroundCol,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          space(100),
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage(
                'assets/1920-attractive-woman-in-a-dj-headphonesand-sunglasse.jpg'),
          ),
          space(30),
          Text(
            'Listen Music\nEverywhere you want',
            style: Style.bold25white,
            textAlign: TextAlign.center,
          ),
          space(30),
          Text(
            'Listen Music Everywhere you to\nboost your day',
            style: Style.greyText,
            textAlign: TextAlign.center,
          ),
          space(60),
          CustomButton(
            text: 'Get Started',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AllTracks.id,
                (route) => false,
              );
            },
          ),
          space(150),
          const DecorationCard()
        ],
      ),
    );
  }
}
