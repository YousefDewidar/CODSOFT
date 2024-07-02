import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/cubit/track_cubit.dart';
import 'package:music_player_app/widgets/favorite/favorite_list_view.dart';
import 'package:music_player_app/widgets/floating_play_card.dart';
import 'package:music_player_app/widgets/recently/recently_list_view.dart';
import 'package:music_player_app/widgets/track/track_list_view.dart';

class AllTracks extends StatefulWidget {
  const AllTracks({super.key});
  static String id = 'tracks';

  @override
  State<AllTracks> createState() => _AllTracksState();
}

class _AllTracksState extends State<AllTracks> {
  PageController pageController = PageController();
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrackCubit(),
      child: Scaffold(
        backgroundColor: Col.backgroundCol,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const FloatingPlayCard(),
        appBar: AppBar(
          title:
              Text(curIndex == 0 ? 'Home' : 'Favorite Tracks', style: Style.white16),
          scrolledUnderElevation: 0,
          centerTitle: true,
          backgroundColor: Col.backgroundCol,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                curIndex = value;
                setState(() {});
              },
              children: const [Home(), Favorite()],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          elevation: 0,
          indicatorColor:  const Color.fromARGB(110, 34, 29, 62),
          height: 60,
          backgroundColor: Col.backgroundCol,
          selectedIndex: curIndex,
          onDestinationSelected: (value) {
            curIndex = value;
            pageController.jumpToPage(curIndex);
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(150, 255, 255, 255),
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.favorite,
                    color: Color.fromARGB(150, 255, 255, 255)),
                label: 'Favorite'),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recently Played', style: Style.bold25white),
        space(15),
        const RecentlyListView(),
        space(15),
        Text('Tracks', style: Style.bold25white),
        space(15),
        const TrackListView(),
      ],
    );
  }
}

class Favorite extends StatelessWidget {
  const Favorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Favorite', style: Style.bold25white),
        const FavoriteListView(),
      ],
    );
  }
}
