import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/operations_cubit.dart';

class MyCard extends StatelessWidget {
  final String title;
  final bool state;
  final int index;

  const MyCard(
      {super.key,
      required this.state,
      required this.title,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        padding: const EdgeInsets.all(13),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xff95d5b2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 24,
                  color: state == true
                      ? const Color.fromARGB(131, 0, 0, 0)
                      : Colors.black,
                  decoration: state == true
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            Row(
              children: [
                Icon(
                  state == true ? Icons.done : Icons.close,
                  size: 25,
                  color: state == true ? Colors.green : Colors.red,
                ),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<OperationsCubit>(context).remove(index);
                    },
                    icon: const Icon(Icons.delete,
                        color: Color.fromARGB(255, 201, 103, 96))),
              ],
            )
          ],
        ));
  }
}
