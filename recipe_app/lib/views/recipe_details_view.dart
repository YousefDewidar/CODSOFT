import 'package:flutter/material.dart';
import 'package:recips_app/widgets/details_view/image_food_details.dart';

class RecipeDetailsView extends StatelessWidget {
  static String id = 'recipeDetails';
  const RecipeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Burger Recipe",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          ImageFoodCard(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Burger',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
