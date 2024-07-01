import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:music_player_app/helper/music_list.dart';
import 'package:music_player_app/widgets/floating_play_card.dart';
import 'package:music_player_app/widgets/recently_card.dart';
import 'package:music_player_app/widgets/track_card.dart';

class AllTracks extends StatelessWidget {
  const AllTracks({super.key});
  static String id = 'tracks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Home',
          style: Style.white16,
        ),
        centerTitle: true,
        backgroundColor: Col.backgroundCol,
      ),
      backgroundColor: Col.backgroundCol,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recently Played', style: Style.bold25white),
              space(15),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => RecentlyTrackCard(
                    track: recPlayList[index],
                  ),
                  itemCount: recPlayList.length,
                ),
              ),
              space(15),
              Text('Tracks', style: Style.bold25white),
              space(15),
              SizedBox(
                height:404 -48,
                child: ListView.builder(
                  physics:const BouncingScrollPhysics(),
                  padding:const EdgeInsets.only(bottom: 100),
                  itemBuilder: (context, index) => TrackCard(
                    track: musicList[index],
                  ),
                  itemCount: musicList.length,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Col.backgroundCol,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
                color: const Color.fromARGB(136, 255, 255, 255)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                ),
                color: const Color.fromARGB(136, 255, 255, 255)),
          ],
        ),
      ),  
      floatingActionButton: const FloatingPlayCard(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
