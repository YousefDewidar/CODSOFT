import 'package:flutter/material.dart';
import 'package:recips_app/widgets/details_view/info_recipe_card.dart';

class InfoDetailsView extends StatelessWidget {
  const InfoDetailsView({
    super.key,
    required this.recIngred,
  });
  final Map<String, int> recIngred;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InfoRecipeCard(
            color: Colors.amberAccent,
            icon: Icons.timer_sharp,
            title: '${recIngred['time'].toString()} Min',
          ),
          InfoRecipeCard(
              title: '${recIngred['calories'].toString()} kcal',
              color: Colors.greenAccent,
              icon: Icons.fireplace_outlined),
          InfoRecipeCard(
              title: '${recIngred['protein'].toString()} g',
              color: Colors.purpleAccent,
              icon: Icons.celebration),
        ],
      ),
    );
  }
}
