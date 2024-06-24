import 'package:flutter/material.dart';
import 'package:recips_app/model/recipe_model.dart';

class RecCard extends StatelessWidget {
  const RecCard({
    super.key,
    required this.rec,
    required this.index,
  });
  final Recipe rec;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: const EdgeInsets.only(left: 100, right: 12),
        height: 80,
        width: double.infinity,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            border: Border.all(
                color: index % 2 != 0
                    ? const Color.fromARGB(128, 245, 122, 163)
                    : Colors.amberAccent),
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(500), right: Radius.circular(500))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              rec.name,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            Text(
              rec.description,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
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
                      color: index % 2 != 0
                          ? const Color.fromARGB(209, 245, 122, 163)
                          : Colors.amber),
                ),
                borderRadius: BorderRadius.circular(50)),
          ),
          Positioned(
            left: 8,
            top: 6,
            child: CircleAvatar(
              backgroundColor: index % 2 != 0
                  ? const Color.fromARGB(255, 253, 217, 229)
                  : Colors.amberAccent,
              radius: 40,
              child: Image.asset(
                rec.img,
                width: 60,
                height: 60,
              ),
            ),
          )
        ]),
      ),
    ]);
  }
}
