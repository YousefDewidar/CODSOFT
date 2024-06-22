import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/model/food.dart';

class TypeFoodCard extends StatelessWidget {
  const TypeFoodCard({
    super.key,
    required this.food
  });
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        color: food.isActive ? kPrimaryColor : Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 8,
        shadowColor:
            food.isActive ? kPrimaryColor : const Color.fromARGB(155, 0, 0, 0),
        shape: const StadiumBorder(),
        child: SizedBox(
          height: 150,
          width: 95,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                food.foodImg,
                height: 80,
                width: 80,
              ),
              const Spacer(),
              Text(
                food.foodName.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
