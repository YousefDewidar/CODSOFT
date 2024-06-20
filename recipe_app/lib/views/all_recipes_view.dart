// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recips_app/constant.dart';
import 'package:recips_app/widgets/type_food_card.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Cook, Your ',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 26)),
                Text('own food',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                        color: kPrimaryColor)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              color: Colors.white,
              elevation: 6,
              shadowColor: Color.fromARGB(116, 212, 212, 212),
              surfaceTintColor: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search here',
                  prefixIcon: Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'What would you like \nto cook today?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xFF515151),
              ),
            ),
            Row(
              children: [
                TypeFoodCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
