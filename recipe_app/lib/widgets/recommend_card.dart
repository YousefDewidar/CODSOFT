import 'package:flutter/material.dart';

class RecCard extends StatelessWidget {
  const RecCard({
    super.key,
    this.isCard2 = false,
    required this.imgPath,
  });
  final bool isCard2;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 80,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            border: Border.all(
                color: isCard2
                    ? const Color.fromARGB(128, 245, 122, 163)
                    : Colors.amberAccent),
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(500), right: Radius.circular(500))),
      ),
      Positioned(
        width: 90,
        height: 94,
        left: -2,
        top: -7,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                      width: 50,
                      color: isCard2
                          ? const Color.fromARGB(209, 245, 122, 163)
                          : Colors.amber),
                ),
                borderRadius: BorderRadius.circular(50)),
          ),
          Positioned(
            left: 8,
            top: 6,
            child: CircleAvatar(
              backgroundColor: isCard2
                  ? const Color.fromARGB(255, 253, 217, 229)
                  : Colors.amberAccent,
              radius: 40,
              child: Image.asset(
                imgPath,
                width: 40,
                height: 40,
              ),
            ),
          )
        ]),
      ),
    ]);
  }
}
