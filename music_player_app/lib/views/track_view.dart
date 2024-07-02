import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/model/track_model.dart';
import 'package:music_player_app/widgets/arrow_app_bar.dart';
import 'package:music_player_app/widgets/decoration_card.dart';
import 'package:music_player_app/widgets/favorite/favorite_button.dart';
import 'package:music_player_app/widgets/play_area/play_area.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TrackView extends StatefulWidget {
  const TrackView({super.key, required this.track});
  final Track track;

  @override
  State<TrackView> createState() => _TrackViewState();
}

class _TrackViewState extends State<TrackView> {
  final AudioPlayer player = AudioPlayer();
  double vol = .8;

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
          Stack(
            children: [
              SleekCircularSlider(
                innerWidget: (percentage) => const SizedBox(),
                appearance: CircularSliderAppearance(
                  size: 310,
                  customWidths: CustomSliderWidths(
                    progressBarWidth: 16,
                  ),
                ),
                min: 0,
                max: 1,
                initialValue: vol,
                onChange: (value) {
                  setState(() {
                    vol = value;
                    player.setVolume(vol);
                  });
                },
              ),
              Positioned(
                bottom: 28,
                left: 12,
                right: 12,
                child: SizedBox(
                  width: 310,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            vol = 0;
                            player.setVolume(vol);
                            setState(() {});
                          },
                          icon: const Icon(Icons.volume_off,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {
                            vol = 1;
                            player.setVolume(vol);
                            setState(() {});
                          },
                          icon:
                              const Icon(Icons.volume_up, color: Colors.white))
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 35,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.track.img),
                  radius: 120,
                ),
              ),
            ],
          ),
          space(20),
          FavoriteButton(
            track: widget.track,
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
          PlayArea(
            player: player,
            track: widget.track,
          ),
          const DecorationCard()
        ],
      ),
    );
  }
}
