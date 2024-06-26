import 'package:flutter/material.dart';
import 'package:recips_app/views/all_recipes_view.dart';
import 'package:recips_app/views/home_view.dart';
import 'package:recips_app/views/recipe_details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // :(context) => HomePage(),
        HomeView.id: (context) => const HomeView(),
        AllRecipesView.id: (context) => const AllRecipesView(),
        RecipeDetailsView.id: (context) => const RecipeDetailsView(),
      },
      initialRoute: 'allRecipes',
    );
  }
}
