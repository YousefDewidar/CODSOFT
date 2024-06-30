import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/widgets/arrow_app_bar.dart';
import 'package:music_player_app/widgets/decoration_card.dart';
import 'package:music_player_app/widgets/play_card.dart';

class TrackView extends StatefulWidget {
  const TrackView({super.key, required this.track});
  final Track track;

  @override
  State<TrackView> createState() => _TrackViewState();
}

class _TrackViewState extends State<TrackView> {
  final AudioPlayer player = AudioPlayer();
  bool isPlay = false;

  void playMusic() async {
    await player.setUrl(widget.track.url);
    player.play();
  }

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
            backgroundImage: NetworkImage(widget.track.img),
            radius: 120,
          ),
          space(20),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 30,
            ),
          ),
          space(20),
          Text(
            widget.track.title,
            style: Style.bold25white,
          ),
          space(10),
          Text(
            widget.track.singer,
            style: Style.greyText,
          ),
          space(20),
          Slider(value: .1, onChanged: (v) {}),
          space(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shuffle, color: Colors.white)),
              IconButton(
                  onPressed: () {},
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
                    playMusic();
                    setState(() {});
                  }
                },
              ),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.arrow_forward_ios, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined, color: Colors.white)),
            ],
          ),
          space(110),
          const DecorationCard()
        ],
      ),
    );
  }
}
