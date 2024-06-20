import 'package:flutter/material.dart';

class TypeFoodCard extends StatelessWidget {
  const TypeFoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 10,
      shadowColor: const Color.fromARGB(108, 0, 0, 0),
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(500)),
      child: SizedBox(
        height: 150,
        width: 100,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/street-food-still-life.jpg',
              height: 80,
              width: 80,
            ),
            const Spacer(),
            Text('Burger'.toUpperCase()),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
