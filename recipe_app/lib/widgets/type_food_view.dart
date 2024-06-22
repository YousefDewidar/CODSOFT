import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/model/food.dart';
import 'package:recips_app/widgets/type_food_card.dart';

class TypeFoodView extends StatelessWidget {
  TypeFoodView({
    super.key,
  });

  final List<Food> foodList = [
    Food(foodImg: kBurgerImg, foodName: 'Burger',isActive: true),
    Food(foodImg: kDonutImg, foodName: 'donut'),
    Food(foodImg: kZingerImg, foodName: 'Zinger'),
    Food(foodImg: kPizzaImg, foodName: 'pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 18),
      child: SizedBox(
        height: 155,
        child: ListView.builder(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: foodList.length,
          itemBuilder: (context, index) {
            return TypeFoodCard(food: foodList[index]);
          },
        ),
      ),
    );
  }
}
