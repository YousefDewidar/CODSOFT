import 'package:flutter/material.dart';
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

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isFav;
  @override
  Widget build(BuildContext context) {
    if (MusicList.favotiteList.contains(widget.track)) {
      isFav = true;
    } else {
      isFav = false;
    }
    return IconButton(
      onPressed: () {
        isFav = !isFav;
        setState(() {});
        if (isFav && !MusicList.favotiteList.contains(widget.track)) {
          MusicList.favotiteList.add(widget.track);
        } else {
          MusicList.favotiteList.remove(widget.track);
        }
      },
      icon: Icon(
        isFav ? Icons.favorite : Icons.favorite_border,
        color: Colors.pink,
        size: 30,
      ),
    );
  }
}
