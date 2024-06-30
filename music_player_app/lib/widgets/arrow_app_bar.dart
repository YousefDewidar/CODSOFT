import 'package:flutter/material.dart';

class ArrowAppBar extends StatelessWidget {
  const ArrowAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12, left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(110, 34, 29, 62),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromARGB(175, 255, 255, 255),
          size: 15,
        ),
      ),
    );
  }
}
