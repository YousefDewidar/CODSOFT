import 'package:flutter/material.dart';
import 'package:music_player_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 45.0),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Col.pinkCol.withAlpha(200),
              Col.blueCol.withAlpha(200)
            ], stops: const [
              0,
              .29
            ]),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          text,
          style: Style.bold16white,
        )),
      ),
    );
  }
}
