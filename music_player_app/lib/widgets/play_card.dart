import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../constants.dart';

class PlayCard extends StatelessWidget {
  final double width;
  final double height;
  const PlayCard({
    this.width = 50,
    this.height = 50,
    super.key,
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
          onPressed: () {},
          shape: const CircleBorder(),
          fillColor: const Color(0xff404c57),
          child: SvgPicture.asset('assets/icon-play.svg'),
        ),
      ),
    );
  }
}
