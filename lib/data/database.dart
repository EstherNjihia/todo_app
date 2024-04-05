import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('myBox');

  //run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Excercise', false]
    ];
  }

  //load dat from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
