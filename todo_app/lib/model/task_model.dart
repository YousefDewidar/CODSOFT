
import 'package:hive/hive.dart';

part 'task_model.g.dart';


@HiveType(typeId: 0)
class Task extends HiveObject {


  @HiveField(0)
  bool state;

  @HiveField(1)
  String title;

  
  Task({
    required this.state,
    required this.title,
  });
}