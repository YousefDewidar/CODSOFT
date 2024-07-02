import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:lottie/lottie.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/model/track_model.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.track,
  });
  final Track track;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with TickerProviderStateMixin {
  late AnimationController favoriteController;
  // late bool isFav;

  @override
  void initState() {
    super.initState();
    favoriteController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    favoriteController.dispose();
    super.dispose();
  }animated

  @override
  Widget build(BuildContext context) {
    if (MusicList.favotiteList.contains(widget.track)) {
      favoriteController.animateTo(0.6);
    } else {
      favoriteController.stop();
    }
    return IconButton(
      onPressed: () {
        if (favoriteController.status == AnimationStatus.dismissed) {
          if (!MusicList.favotiteList.contains(widget.track)) {
            MusicList.favotiteList.add(widget.track);
            favoriteController.animateTo(0.6); //play
          }
        } else {
          MusicList.favotiteList.remove(widget.track);
          favoriteController.reverse(); //stop
        }
      },
      icon: Lottie.asset(Icons8.heart_color,
          width: 37, height: 35, controller: favoriteController),
    );
  }
}
