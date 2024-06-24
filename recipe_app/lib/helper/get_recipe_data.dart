import 'package:recips_app/constant.dart';
import 'package:recips_app/model/recipe_model.dart';

List recipeDetails() {
  List<Recipe> recipeList = [
    Recipe(
      name: 'Burger',
      img: kBurgerImg,
      description: 'A juicy and flavorful all-American classic.',
      ingredients: {
        'protein': 30,
        'calories': 500,
      },
      instructions: '''
      1. Form ground beef (or your preferred protein source) into patties slightly larger than the burger buns to account for shrinkage during cooking.
      2. Season the patties with salt, pepper, and your favorite burger seasoning.
      3. Heat a grill or pan over medium heat.
      4. Grill or pan-fry the patties for a few minutes per side, depending on desired doneness (rare, medium, well-done).
      5. Toast the burger buns if desired.
      6. Assemble your burger with your favorite toppings like lettuce, tomato, onion, cheese, pickles, ketchup, mustard, and mayonnaise.
    ''',
    ),
    Recipe(
      name: 'Donut',
      img: kDonutImg, // Assuming you have a variable named kDonutImg
      description:
          'A light and fluffy donut topped with a sweet and shiny glaze.',
      ingredients: {
        'protein': 5,
        'calories': 350,
      },
      instructions: '''
      1. Prepare donut dough according to your preferred recipe or use store-bought dough.
      2. Fry or bake the donuts until golden brown.
      3. Make a glaze with powdered sugar, milk, and vanilla extract.
      4. Dip the cooled donuts into the glaze and let them set.
    ''',
    ),
    Recipe(
      name: 'Zinger',
      img: kZingerImg, // Assuming you have a variable named kZingerBurgerImg
      description: 'A spicy and flavorful burger with a crispy chicken patty.',
      ingredients: {
        'protein': 40, // Adjust based on patty size
        'calories': 600, // Adjust based on ingredients
      },
      instructions: '''
      1. Marinate chicken breast in a mixture of yogurt, chili powder, paprika, and other spices for at least 30 minutes.
      2. Prepare burger buns according to package instructions (toast if desired).
      3. Cook the marinated chicken breast until golden brown and cooked through.
      4. Assemble the burger with your favorite toppings like lettuce, tomato, onion, cheese, and spicy mayo.
    ''',
    ),
    Recipe(
      name: 'Pizza',
      img: kPizzaImg, // Assuming you have a variable named kPizzaImg
      description:
          'A crowd-pleasing pizza with a tomato sauce base, mozzarella cheese, and your favorite toppings.',
      ingredients: {
        'protein': 20, // Adjust based on toppings
        'calories': 450, // Adjust based on size and toppings
      },
      instructions: '''
      1. Preheat oven to 450°F (230°C).
      2. Prepare pizza dough according to your preferred recipe or use store-bought dough.
      3. Spread pizza sauce on the dough, then top with mozzarella cheese and your desired toppings (pepperoni, sausage, vegetables, etc.).
      4. Bake for 15-20 minutes, or until the crust is golden brown and the cheese is melted and bubbly.
    ''',
    ),
    Recipe(
      name: 'Pasta',
      img: kPastaImg, // Assuming you have a variable named kPastaImg
      description:
          'A comforting pasta dish with a rich tomato sauce and creamy cheese.',
      ingredients: {
        'protein': 15, // Adjust based on cheese and protein source
        'calories': 500, // Adjust based on ingredients
      },
      instructions: '''
      1. Cook your favorite pasta according to package instructions.
      2. Sauté chopped onion and garlic in olive oil.
      3. Add crushed tomatoes, Italian seasoning, and a pinch of red pepper flakes for a kick (optional).
      4. Simmer the sauce for a few minutes, then stir in cream cheese or heavy cream for a creamy texture.
      5. Toss the cooked pasta with the sauce and grated Parmesan cheese.
    ''',
    ),
    Recipe(
      name: 'Meat',
      img: kMeatImg,
      description:
          'A classic comfort food made with ground meat, breadcrumbs, and a flavorful glaze.',
      ingredients: {
        'protein': 35,
        'calories': 500,
      },
      instructions: '''
      1. Preheat oven to 375°F (190°C).
      2. Combine ground meat (beef, turkey, etc.), breadcrumbs, eggs, chopped onion, and your favorite seasonings.
      3. Form the mixture into a loaf shape and place on a baking sheet.
      4. Bake for 45-60 minutes, or until cooked through.
      5. Optionally, brush with a glaze made of ketchup, brown sugar, and mustard during the last few minutes of baking.
    ''',
    ),
  ];

  return recipeList;
}
