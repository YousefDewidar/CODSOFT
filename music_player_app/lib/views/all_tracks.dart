import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/widgets/recently_card.dart';
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
                Text('Recently Played', style: Style.bold25white),
                space(15),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const RecentlyTrackCard(),
                    itemCount: 5,
                  ),
                ),
                space(15),
                Text('Tracks', style: Style.bold25white),
                space(15),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemBuilder: (context, index) => const TrackCard(),
                    itemCount: 10,
                  ),
                ),
                space(15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
