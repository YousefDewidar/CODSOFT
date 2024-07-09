import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/operations_state.dart';
import 'package:todo_app/model/task_model.dart';

class OperationsCubit extends Cubit<OperationsState> {
  OperationsCubit() : super(OperationsInitial());

  List myList = [];
  int numTaskDone = 0;

  void addToList({required TextEditingController controller}) {
    myList.add(Task(state: false, title: controller.text));
    emit(OperationsInitial());
  }

  void remove(int index) {
    if (myList[index].state == true) {
      numTaskDone--;
    }
    myList.remove(myList[index]);
    emit(OperationsInitial());
  }

  void removeAll() {
    myList = [];
    numTaskDone = 0;
    emit(OperationsInitial());
  }

  void doneTask({required int index}) {
    myList[index].state = !myList[index].state;
    if (myList[index].state) {
      numTaskDone++;
    } else {
      numTaskDone--;
    }
    emit(OperationsInitial());
  }
}
