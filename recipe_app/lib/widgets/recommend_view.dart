import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/widgets/recommend_card.dart';

class RecView extends StatelessWidget {
  const RecView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RecCard(
          imgPath: kBurgerImg,
        ),
        SizedBox(
          height: 40,
        ),
        RecCard(
          isCard2: true,
          imgPath: kPastaImg,
        ),
      ],
    );
  }
}
