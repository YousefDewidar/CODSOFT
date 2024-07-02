import 'package:flutter/material.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/widgets/track_card.dart';

class TrackListView extends StatelessWidget {
  const TrackListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 356,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, index) => TrackCard(
          track: MusicList.trackList[index],
        ),
        itemCount: MusicList.trackList.length,
      ),
    );
  }
}
