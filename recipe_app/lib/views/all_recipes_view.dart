import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recips_app/cubit/search_cubit.dart';
import 'package:recips_app/widgets/addition_widgets.dart';
import 'package:recips_app/widgets/recommend_view.dart';
import 'package:recips_app/widgets/search_card.dart';
import 'package:recips_app/widgets/type_food_view.dart';

class AllRecipesView extends StatelessWidget {
  const AllRecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
              Text('Yousef 👋',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
            ],
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
                RecView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
