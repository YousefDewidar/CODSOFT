import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/cubit/track_cubit.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/views/track_view.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key, required this.track});
  final Track track;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<TrackCubit>(context).setFloatingTrack(track);
        if(!MusicList.recentlyList.contains(track)){
          MusicList.recentlyList.insert(0, track);
        }
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TrackView(
                    track: track,
                  )),
        );
      },
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
                Image.network(
                  track.img,
                  height: 60,
                  width: 50,
                ),
                space(15, dir: 'h'),
                // track name & time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(track.title, style: Style.bold16white),
                    Row(
                      children: [
                        Text(track.singer, style: Style.greyText),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
