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
          Text('Discover Best ',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
          Text(
            'Recipes',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
