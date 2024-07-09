
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/operations_cubit.dart';
import 'package:todo_app/widgets/my_card.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount:
            BlocProvider.of<OperationsCubit>(context).myList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<OperationsCubit>(context).doneTask(index: index);
            },
            child: MyCard(
              state: BlocProvider.of<OperationsCubit>(context)
                  .myList[index]
                  .state,
              title: BlocProvider.of<OperationsCubit>(context)
                  .myList[index]
                  .title,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
