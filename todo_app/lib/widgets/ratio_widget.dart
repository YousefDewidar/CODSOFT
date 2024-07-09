import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/operations_cubit.dart';

class RatioWidget extends StatelessWidget {
  const RatioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff40916c),
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Text(
            "${BlocProvider.of<OperationsCubit>(context).numTaskDone}/${BlocProvider.of<OperationsCubit>(context).myList.length}",
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w800,
                color: BlocProvider.of<OperationsCubit>(context).numTaskDone ==
                        BlocProvider.of<OperationsCubit>(context).myList.length
                    ? Colors.yellow
                    : const Color.fromARGB(225, 255, 255, 255))),
      ),
    );
  }
}
