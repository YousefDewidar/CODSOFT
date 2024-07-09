import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/constant.dart';
import 'package:todo_app/cubit/operations_state.dart';
import 'package:todo_app/model/task_model.dart';

class OperationsCubit extends Cubit<OperationsState> {
  OperationsCubit() : super(OperationsInitial());

  List myList = Hive.box(taskBox).get('myList') ?? [];
  int numTaskDone = Hive.box(numTaskDoneBox).get('numTaskDone') ?? 0;
  var box = Hive.box(taskBox);
  var numBox = Hive.box(numTaskDoneBox);

  void addToList({required TextEditingController controller}) {
    myList.add(Task(state: false, title: controller.text));
    box.put('myList', myList);
    emit(OperationsInitial());
  }

  void remove(int index) {
    if (myList[index].state == true) {
      numTaskDone--;
      numBox.put('numTaskDone', numTaskDone);
    }
    myList.remove(myList[index]);
    box.put('myList', myList);
    emit(OperationsInitial());
  }

  void removeAll() {
    myList = [];
    numTaskDone = 0;
    numBox.put('numTaskDone', numTaskDone);
    box.put('myList', myList);
    emit(OperationsInitial());
  }

  void doneTask({required int index}) {
    myList[index].state = !myList[index].state;
    if (myList[index].state) {
      numTaskDone++;
    } else {
      numTaskDone--;
    }
    numBox.put('numTaskDone', numTaskDone);
    box.put('myList', myList);
    emit(OperationsInitial());
  }
}
