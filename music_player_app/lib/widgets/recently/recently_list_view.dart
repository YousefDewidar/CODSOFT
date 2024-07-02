import 'package:carousel_slider/carousel_slider.dart';
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
  List<Widget> myWidgets =
      MusicList.recentlyList.map((e) => RecentlyCard(track: e)).toList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BlocListener<TrackCubit, TrackState>(
        listener: (context, state) {
          if (state is InitState) {
            myWidgets = MusicList.recentlyList
                .map((e) => RecentlyCard(track: e))
                .toList();
            setState(() {});
          }
        },
        child: CarouselSlider(
            items: myWidgets,
            options: CarouselOptions(
              height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: 0.6,
              enlargeFactor: 0.3,
              enlargeCenterPage: true,
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            )),
      ),
    );
  }
}
