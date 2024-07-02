import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/widgets/play_card.dart';

class PlayArea extends StatefulWidget {
  const PlayArea({
    super.key,
    required this.track,
    required this.player,
  });
  final Track track;
  final AudioPlayer player;

  @override
  State<PlayArea> createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  final PageController pageController = PageController();
  bool isPlay = true;
  Duration position = Duration.zero;
  Duration duration = Duration.zero;

  late StreamSubscription<Duration> positionSubscription;

  void loadMusic() async {
    await widget.player.setUrl(widget.track.url);
    duration = widget.player.duration!;
    widget.player.play();
  }

  @override
  void initState() {
    super.initState();
    loadMusic();
    positionSubscription = widget.player.positionStream.listen((pos) {
      if (mounted) {
        setState(() {
          position = pos;
          if (position == widget.player.duration) {
            isPlay = false;
            widget.player.stop();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    positionSubscription.cancel();
    widget.player.dispose();
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
                widget.player.seek(position);
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                musicTime(widget.player.duration ?? Duration.zero),
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
                onPressed: () {
          
                },
                icon: const Icon(Icons.shuffle, color: Colors.white)),
            IconButton(
                onPressed: () {
                  if (position.inSeconds >= 10) {
                    position = Duration(seconds: position.inSeconds - 10);
                    widget.player.seek(position);
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
                  widget.player.pause();
                  setState(() {});
                } else if (isPlay == false) {
                  isPlay = true;
                  widget.player.play();
                  setState(() {});
                }
              },
            ),
            IconButton(
                onPressed: () {
                  if (position.inSeconds <=
                      widget.player.duration!.inSeconds - 10) {
                    position = Duration(seconds: position.inSeconds + 10);
                    widget.player.seek(position);
                    setState(() {});
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white)),
            TextButton(
              child: Text('${widget.player.speed}X', style: Style.bold16white),
              onPressed: () {
                if (widget.player.speed == 1.0) {
                  widget.player.setSpeed(1.5);
                } else if (widget.player.speed == 1.5) {
                  widget.player.setSpeed(2.0);
                } else if (widget.player.speed == 2.0) {
                  widget.player.setSpeed(1.0);
                }
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
