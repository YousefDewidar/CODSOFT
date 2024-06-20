
import 'package:flutter/material.dart';
import 'package:recips_app/constant.dart';

class TextCookRow extends StatelessWidget {
  const TextCookRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Text('Cook, Your ',
              style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 26)),
          Text(
            'own food',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

class RecommendedRow extends StatelessWidget {
  const RecommendedRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
