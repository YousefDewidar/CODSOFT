import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_app/cubit/track_cubit.dart';
import 'package:music_player_app/cubit/track_state.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/widgets/recently/recently_card.dart';

class RecentlyListView extends StatefulWidget {
  const RecentlyListView({
    super.key,
  });

  @override
  State<RecentlyListView> createState() => _RecentlyListViewState();
}

class _RecentlyListViewState extends State<RecentlyListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocListener<TrackCubit, TrackState>(
        listener: (context, state) {
          if (state is InitState) {
            setState(() {});
          }
        },
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => RecentlyCard(
            track: MusicList.recentlyList[index],
          ),
          itemCount: MusicList.recentlyList.length,
        ),
      ),
    );
  }
}