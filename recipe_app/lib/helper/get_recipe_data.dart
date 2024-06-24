import 'package:recips_app/constant.dart';
import 'package:recips_app/model/recipe_model.dart';

List recipeDetails() {
  List recipeList = [
    Recipe(
        name: 'Pizza',
        img: kPizzaImg,
        description: 'description',
        ingredients: {'protein': 6, 'calories': 200},
        instructions: 'instructions',
        isActive: true),
    Recipe(
        name: 'burger',
        img: kBurgerImg,
        description: 'description',
        ingredients: {'protein': 6, 'calories': 200},
        instructions: 'instructions'),
    Recipe(
        name: 'pasta',
        img: kPastaImg,
        description: 'description',
        ingredients: {'protein': 6, 'calories': 200},
        instructions: 'instructions'),
    Recipe(
        name: 'donut',
        img: kDonutImg,
        description: 'description',
        ingredients: {'protein': 6, 'calories': 200},
        instructions: 'instructions'),
    Recipe(
      name: 'zinger',
      img: kZingerImg,
      description: 'description',
      ingredients: {'protein': 6, 'calories': 200},
      instructions: 'instructions',
    ),
    Recipe(
      name: 'meat',
      img: kMeatImg,
      description: 'description',
      ingredients: {'protein': 6, 'calories': 200},
      instructions: 'instructions',
    ),
  ];

  return recipeList;
}
