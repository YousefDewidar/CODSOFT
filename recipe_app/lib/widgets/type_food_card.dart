import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/model/recipe_model.dart';

class TypeFoodCard extends StatelessWidget {
  const TypeFoodCard({super.key, required this.rec});
  final Recipe rec;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        color: rec.isActive ? kPrimaryColor : Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 8,
        shadowColor:
            rec.isActive ? kPrimaryColor : const Color.fromARGB(155, 0, 0, 0),
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
                rec.img,
                height: 80,
                width: 80,
              ),
              const Spacer(),
              Text(
                rec.name.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
                child: Text(rec.ingredients['protein'].toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
