import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';
import 'package:svg_flutter/svg.dart';

class PlayCard extends StatelessWidget {
  final double width;
  final double height;
  final bool isPlay;
  final void Function()? onPressed;

  const PlayCard({
    this.width = 50,
    this.height = 50,
    this.onPressed,
    super.key,
    required this.isPlay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Col.blueCol.withOpacity(0.2), Col.pinkCol.withOpacity(0.2)],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Col.pinkCol, Col.blueCol],
          ),
        ),
        child: RawMaterialButton(
          onPressed: onPressed,
          shape: const CircleBorder(),
          fillColor: const Color(0xff404c57),
          child: SvgPicture.asset(
            // ignore: deprecated_member_use
            color: Colors.white,
              isPlay ? 'assets/pause-svgrepo-com.svg' : 'assets/icon-play.svg'),
        ),
      ),
    );
  }
}
