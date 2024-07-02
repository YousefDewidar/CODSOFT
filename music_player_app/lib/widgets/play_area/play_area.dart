import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/widgets/play_card.dart';

class PlayArea extends StatefulWidget {
  const PlayArea({super.key, required this.track});
  final Track track;

  @override
  State<PlayArea> createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  final AudioPlayer player = AudioPlayer();
  final PageController pageController = PageController();
  bool isPlay = true;
  Duration position = Duration.zero;
  Duration duration = Duration.zero;

  late StreamSubscription<Duration> positionSubscription;

  void loadMusic() async {
    await player.setUrl(widget.track.url);
    duration = player.duration!;
    player.play();
  }

  @override
  void initState() {
    super.initState();
    loadMusic();
    positionSubscription = player.positionStream.listen((pos) {
      if (mounted) {
        setState(() {
          position = pos;
          if (position == player.duration) {
            isPlay = false;
            player.stop();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    positionSubscription.cancel();
    player.dispose();
    super.dispose();
  }

  String musicTime(Duration num) {
    String time = '0:00';
    time =
        '${num.toString().split(':')[1]}:${num.toString().split(':')[2].split('.')[0]}';
    return time;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
            value: position.inSeconds.toDouble(),
            min: 0.0,
            max: duration.inSeconds.toDouble(),
            onChanged: (v) {
              setState(() {
                position = Duration(seconds: v.toInt());
                player.seek(position);
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                musicTime(player.duration ?? Duration.zero),
                style: Style.white16,
              ),
              Text(musicTime(position), style: Style.white16),
            ],
          ),
        ),
        space(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shuffle, color: Colors.white)),
            IconButton(
                onPressed: () {
                  if (position.inSeconds >= 10) {
                    position = Duration(seconds: position.inSeconds - 10);
                    player.seek(position);
                    setState(() {});
                  }
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
            PlayCard(
              width: 120,
              height: 70,
              isPlay: isPlay,
              onPressed: () {
                if (isPlay == true) {
                  isPlay = false;
                  player.pause();
                  setState(() {});
                } else if (isPlay == false) {
                  isPlay = true;
                  player.play();
                  setState(() {});
                }
              },
            ),
            IconButton(
                onPressed: () {
                  if (position.inSeconds <= player.duration!.inSeconds - 10) {
                    position = Duration(seconds: position.inSeconds + 10);
                    player.seek(position);
                    setState(() {});
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined, color: Colors.white)),
          ],
        ),
        space(80),
      ],
    );
  }
}
