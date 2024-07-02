import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/views/track_view.dart';

class RecentlyCard extends StatelessWidget {
  const RecentlyCard({super.key, required this.track});
  final Track track;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TrackView(
                      track: track,
                    )));
      },
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
                  child: Image.network(
                    track.img,
                    height: 100,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                space(10),
                Text(track.title, style: Style.bold16white),
                Text(track.singer.split(' ').first, style: Style.greyText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
