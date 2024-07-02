import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/widgets/arrow_app_bar.dart';
import 'package:music_player_app/widgets/decoration_card.dart';
import 'package:music_player_app/widgets/favorite/favorite_button.dart';
import 'package:music_player_app/widgets/play_area/play_area.dart';

class TrackView extends StatelessWidget {
  const TrackView({super.key, required this.track});
  final Track track;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Col.backgroundCol,
      appBar: AppBar(
        leadingWidth: 40,
        leading: const ArrowAppBar(),
        backgroundColor: Col.backgroundCol,
        title: Text(
          'Now Playing',
          style: Style.white16,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          space(30),
          CircleAvatar(
            backgroundImage: NetworkImage(track.img),
            radius: 120,
          ),
          space(20),
          FavoriteButton(
            track: track,
          ),
          space(20),
          Text(
            track.title,
            style: Style.bold25white,
          ),
          space(10),
          Text(
            track.singer,
            style: Style.greyText,
          ),
          space(20),
          PlayArea(track: track),
          const DecorationCard()
        ],
      ),
    );
  }
}
