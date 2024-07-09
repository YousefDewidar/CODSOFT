import 'package:flutter/material.dart';
import 'package:todo_app/widgets/add_dialog.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xff95d5b2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const AddDialog();
                });
          },
          icon: const Icon(Icons.add),
        ));
  }
}
