import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/operations_cubit.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({
    super.key,
  });

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
    TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(22),
        height: 180,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              controller: myController,
              decoration: const InputDecoration(
                labelText: "Add new task",
                labelStyle: TextStyle(color: Color.fromARGB(255, 23, 58, 23)),
              ),
              maxLength: 25,
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<OperationsCubit>(context)
                    .addToList(controller: myController);
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(175, 81, 164, 128))),
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
