import 'package:flutter/material.dart';
import 'package:recips_app/widgets/details_view/image_food_details.dart';
import 'package:recips_app/widgets/details_view/info_details_view.dart';

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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageFoodCard(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Burger',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            InfoDetailsView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Recipe',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'About Recipe About RecipeAbout RecipeAbout RecipeAbout Recipe About Recipe About Recipe About RecipeAbout RecipeAbout Recipe.',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
'''
1. Form ground beef (or your preferred protein source) into patties slightly larger than the burger buns to account for shrinkage during cooking.
2. Season the patties with salt, pepper, and your favorite burger seasoning.
3. Heat a grill or pan over medium heat.
4. Grill or pan-fry the patties for a few minutes per side, depending on desired doneness (rare, medium, well-done).
5. Toast the burger buns if desired.
6. Assemble your burger with your favorite toppings like lettuce, tomato, onion, cheese, pickles, ketchup, mustard, and mayonnaise.
''',
                    style: TextStyle(fontSize: 15),
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
