import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/cubit/track_cubit.dart';
import 'package:music_player_app/cubit/track_state.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/views/track_view.dart';
import 'package:music_player_app/widgets/play_card.dart';

class FloatingPlayCard extends StatefulWidget {
  const FloatingPlayCard({
    super.key,
  });

  @override
  State<FloatingPlayCard> createState() => _FloatingPlayCardState();
}

class _FloatingPlayCardState extends State<FloatingPlayCard> {
  Track track = Track(
    img:
        'https://source.boomplaymusic.com/group10/M00/02/03/3fa2484d4d764a8b8efa28a07c98a767_320_320.jpg',
    title: 'Track Name',
    singer: 'Singer',
    url:
        "https://assets.mixkit.co/music/preview/mixkit-tech-house-vibes-130.mp3",
  );
  bool isPlay = false;
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TrackView(
                    track: track,
                  )),
        );
      },
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
        child: BlocListener<TrackCubit, TrackState>(
          listener: (context, state) async {
            if (state is InitState) {
              setState(() {
                track = BlocProvider.of<TrackCubit>(context).myTrack!;
              });
            }
          },
          child: BottomAppBar(
            color: Colors.transparent,
            notchMargin: 4,
            elevation: 0,
            child: Row(
              children: [
                PlayCard(
                  isPlay: isPlay,
                  onPressed: () async {
                    if (isPlay == true) {
                      isPlay = false;
                      player.pause();
                      setState(() {});
                    } else if (isPlay == false) {
                      isPlay = true;
                      await player.setUrl(track.url);
                      player.play();
                      setState(() {});
                    }
                  },
                ),
                space(15, dir: 'h'),
                // track name & time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(track.title, style: Style.bold16white),
                    Text(track.singer.split(' ')[0],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
                const Spacer(),
                Image.network(
                  track.img,
                  height: 50,
                  width: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
