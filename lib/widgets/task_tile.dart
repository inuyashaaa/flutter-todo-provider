import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.title, this.isChecked, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        title,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        fillColor: MaterialStateProperty.all(Colors.lightBlueAccent),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
