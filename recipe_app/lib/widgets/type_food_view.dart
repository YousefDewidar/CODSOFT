import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/widgets/type_food_card.dart';

class TypeFoodView extends StatelessWidget {
  const TypeFoodView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: const [
          TypeFoodCard(
            foodImg: kBurgerImg,
            foodName: 'Burger',
            isActive: true,
          ),
          TypeFoodCard(
            foodImg: kPastaImg,
            foodName: 'Pasta',
          ),
          TypeFoodCard(
            foodImg: kBurgerImg,
            foodName: 'Meat',
          ),
          TypeFoodCard(
            foodImg: kBurgerImg,
            foodName: 'Burger',
          ),
          TypeFoodCard(
            foodImg: kPastaImg,
            foodName: 'Pasta',
          ),
          TypeFoodCard(
            foodImg: kBurgerImg,
            foodName: 'Burger',
          ),
          TypeFoodCard(
            foodImg: kPastaImg,
            foodName: 'Pasta',
          ),
        ],
      ),
    );
  }
}
