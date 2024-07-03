import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTask;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //checkbox

            Padding(
              padding: const EdgeInsets.all(5),
              child: Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
              ),
            ),

            //task name

            Text(
              taskName,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),

            IconButton(
              onPressed: () {
                deleteTask;
              },
              icon: Icon(
                Icons.delete,
                size: 30,
              ),
              color: Colors.white,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 185, 111, 25), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(30),
      ),
    );
  }
}
