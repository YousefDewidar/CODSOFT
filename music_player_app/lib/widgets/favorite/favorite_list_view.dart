import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/widgets/track_card.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 625,
      child: 
      MusicList.favotiteList.isEmpty? Center(child: Text("Tracks you've liked live here",style: Style.bold16white,),) :
      ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, index) => TrackCard(
          track: MusicList.favotiteList[index],
        ),
        itemCount: MusicList.favotiteList.length,
      ),
    );
  }
}
