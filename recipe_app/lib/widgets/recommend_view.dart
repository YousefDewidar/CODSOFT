import 'package:flutter/material.dart';
import 'package:recips_app/helper/get_recipe_data.dart';
import 'package:recips_app/widgets/recommend_card.dart';

class RecView extends StatefulWidget {
  const RecView({
    super.key,
  });

  @override
  State<RecView> createState() => _RecViewState();
}

class _RecViewState extends State<RecView> {
  int itemCount = 2;
  String buttonName = 'View All';
  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();
  double numRotatex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recommended',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color.fromARGB(255, 45, 45, 45),
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (buttonName == 'View All') {
                      buttonName = 'Hide';
                      itemCount = recipeDetails().length;
                      scrollPhysics = const AlwaysScrollableScrollPhysics();
                      numRotatex = .25;
                      setState(() {});
                    } else if (buttonName == 'Hide') {
                      buttonName = 'View All';
                      itemCount = 2;
                      numRotatex = 0;
                      scrollPhysics = const NeverScrollableScrollPhysics();
                      setState(() {});
                    }
                  },
                  child: Text(
                    buttonName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color.fromARGB(229, 81, 81, 81),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.rotationX(numRotatex),
            curve: Curves.bounceOut,
            height: 257,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 2, top: 10),
              physics: scrollPhysics,
              itemCount: itemCount,
              itemBuilder: (context, index) => Column(
                children: [
                  RecCard(
                    rec: recipeDetails()[index],
                    index: index,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
