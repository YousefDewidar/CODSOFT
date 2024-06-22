import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recips_app/constant.dart';

class TextCookRow extends StatelessWidget {
  const TextCookRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text('Discover Best ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
              Text(
                'Recipes',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: kPrimaryColor),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient:
                      const LinearGradient(colors: [Colors.red, Colors.blue])),
              child: const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.wandMagicSparkles,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('AI magic',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
