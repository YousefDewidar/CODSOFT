import 'package:flutter/material.dart';
import 'package:recips_app/views/all_recipes_view.dart';
import 'package:recips_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        // :(context) => HomePage(),
        'home': (context) => const HomeView(),
        'allRecipes': (context) => const AllRecipesView(),
      },
      initialRoute: 'allRecipes',
    );
  }
}
