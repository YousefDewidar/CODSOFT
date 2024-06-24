import 'package:flutter/material.dart';
import 'package:recips_app/helper/get_recipe_data.dart';
import 'package:recips_app/widgets/type_food_card.dart';

class TypeFoodView extends StatefulWidget {
  const TypeFoodView({
    super.key,
  });

  @override
  State<TypeFoodView> createState() => _TypeFoodViewState();
}

class _TypeFoodViewState extends State<TypeFoodView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 18),
      child: Column(
        children: [
          SizedBox(
            height: 155,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: recipeDetails().length,
              itemBuilder: (context, index) {
                return TypeFoodCard(rec: recipeDetails()[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
