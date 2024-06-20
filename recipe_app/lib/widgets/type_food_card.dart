import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';

class TypeFoodCard extends StatelessWidget {
  const TypeFoodCard({
    super.key,
    required this.foodImg,
    required this.foodName,
    this.isActive = false,
  });
  final String foodImg;
  final String foodName;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        color: isActive ? kPrimaryColor : Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 8,
        shadowColor:
            isActive ? kPrimaryColor : const Color.fromARGB(155, 0, 0, 0),
        shape:const StadiumBorder() ,
        child: SizedBox(
          height: 150,
          width: 95,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                foodImg,
                height: 80,
                width: 80,
              ),
              const Spacer(),
              Text(
                foodName.toUpperCase(),
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
