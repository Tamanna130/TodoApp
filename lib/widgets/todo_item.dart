import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            print("hello");
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Color.fromARGB(255, 159, 158, 158),
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                decoration: todo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 6),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 254, 122, 113),
                borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                print("delete");
              },
            ),
          ),
        ));
  }
}
