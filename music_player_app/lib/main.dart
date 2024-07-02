import 'package:flutter/material.dart';
import 'package:music_player_app/views/all_tracks.dart';
import 'package:music_player_app/views/home_view.dart';

void main() {
  runApp(const SamanyApp());
}

class SamanyApp extends StatelessWidget {
  const SamanyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id:(context) => const HomeView(),
        AllTracks.id:(context) =>const AllTracks(),
      },
      initialRoute:  AllTracks.id ,
    );
  }
}
