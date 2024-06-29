import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';

class DecorationCard extends StatelessWidget {
  const DecorationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Col.pinkCol,
            blurRadius: 50,
            offset: const Offset(-50, 0),
            spreadRadius: 40,
          ),
          BoxShadow(
            color: Col.blueCol,
            blurRadius: 50,
            offset: const Offset(50, 0),
            spreadRadius: 40,
            
          )
        ],
        shape: BoxShape.circle,
      ),
    );
  }
}
