import 'package:flutter/material.dart';
import 'package:music_player_app/views/home_view.dart';

void main() {
  runApp(const SamanyApp());
}

class SamanyApp extends StatelessWidget {
  const SamanyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
