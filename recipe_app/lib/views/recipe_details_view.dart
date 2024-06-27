import 'package:flutter/material.dart';
import 'package:recips_app/model/recipe_model.dart';
import 'package:recips_app/widgets/details_view/image_food_details.dart';
import 'package:recips_app/widgets/details_view/info_details_view.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key, required this.rec});
  static String id = 'recipeDetails';
  final Recipe rec;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${rec.name} Recipe",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageFoodCard(
              img: rec.img,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rec.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            InfoDetailsView(
              recIngred: rec.ingredients,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About Recipe',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    rec.description,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    rec.instructions,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
