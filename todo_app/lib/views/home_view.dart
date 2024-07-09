// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constant.dart';
import 'package:todo_app/cubit/operations_cubit.dart';
import 'package:todo_app/cubit/operations_state.dart';
import 'package:todo_app/widgets/custom_floating_button.dart';
import 'package:todo_app/widgets/ratio_widget.dart';
import 'package:todo_app/widgets/tasks_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      titleSpacing: 10,
      backgroundColor: const Color(0xff1b4332),
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              BlocProvider.of<OperationsCubit>(context).removeAll();
            },
            icon: const Icon(
              Icons.delete_forever_rounded,
              size: 33,
              color: Color.fromARGB(255, 207, 83, 75),
            ))
      ],
      title: const Text(
        "TODO LIST",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(225, 255, 255, 255)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryCol,
        floatingActionButton: const CustomFloatingButton(),
        appBar: customAppBar(context),
        body: SingleChildScrollView(
          child: BlocBuilder<OperationsCubit, OperationsState>(
            builder: (context, state) {
              return Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  RatioWidget(),
                  TasksListView(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
