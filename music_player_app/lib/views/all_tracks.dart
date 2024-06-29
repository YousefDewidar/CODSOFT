import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/widgets/track_card.dart';

class AllTracks extends StatelessWidget {
  const AllTracks({super.key});
  static String id = 'tracks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.backgroundCol,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tracks', style: Style.bold25white),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemBuilder: (context, index) => const TrackCard(),
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
