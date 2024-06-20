import 'package:flutter/material.dart';
import 'package:recips_app/widgets/addition_widgets.dart';
import 'package:recips_app/widgets/recommend_view.dart';
import 'package:recips_app/widgets/search_card.dart';
import 'package:recips_app/widgets/type_food_view.dart';

class AllRecipesView extends StatelessWidget {
  const AllRecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi, Name',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.vertical_split_rounded,
            size: 28,
          ),
          onPressed: () {},
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCookRow(),
              SearchCard(),
              Text(
                'What would you like \nto cook today?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color.fromARGB(255, 45, 45, 45),
                ),
              ),
              TypeFoodView(),
              RecommendedRow(),
              RecView(),
            ],
          ),
        ),
      ),
    );
  }
}
