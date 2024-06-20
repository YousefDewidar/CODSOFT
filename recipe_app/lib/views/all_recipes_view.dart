import 'package:flutter/material.dart';
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
                color: Color.fromARGB(255, 45, 45, 45),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 155,
              child: ListView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                children: const [
                  TypeFoodCard(
                    foodImg: kBurgerImg,
                    foodName: 'Burger',
                    isActive: true,
                  ),
                  TypeFoodCard(
                    foodImg: kPastaImg,
                    foodName: 'Pasta',
                  ),
                  TypeFoodCard(
                    foodImg: kBurgerImg,
                    foodName: 'Meat',
                  ),
                  TypeFoodCard(
                    foodImg: kBurgerImg,
                    foodName: 'Burger',
                  ),
                  TypeFoodCard(
                    foodImg: kPastaImg,
                    foodName: 'Pasta',
                  ),
                  TypeFoodCard(
                    foodImg: kBurgerImg,
                    foodName: 'Burger',
                  ),
                  TypeFoodCard(
                    foodImg: kPastaImg,
                    foodName: 'Pasta',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recomended',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color.fromARGB(255, 45, 45, 45),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
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
            Expanded(
              child: ListView(
                clipBehavior: Clip.none,
                children: [
                  Stack(children: [
                    Container(
                      height: 88,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amberAccent),
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(500),
                              right: Radius.circular(500))),
                    ),
                    Positioned(
                      width: 88,
                      height: 88,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            border:
                                Border.all(width: 8, color: Colors.amberAccent),
                            borderRadius: BorderRadius.circular(50)),
                        // child:const CircleAvatar(
                        //   backgroundColor: Colors.amberAccent,
                        //   minRadius: 40,
                        // ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 12,
                  ),
                  Stack(children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amberAccent),
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(500),
                              right: Radius.circular(500))),
                    ),
                    Positioned(
                      width: 88,
                      height: 88,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            border:
                                Border.all(width: 8, color: Colors.amberAccent),
                            borderRadius: BorderRadius.circular(50)),
                        // child:const CircleAvatar(
                        //   backgroundColor: Colors.amberAccent,
                        //   minRadius: 40,
                        // ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
