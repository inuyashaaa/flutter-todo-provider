import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            controller: _controller,
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (text) {},
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {
              print(_controller.text);
              final String newText = _controller.text;
              if (newText != null) {
                Provider.of<TaskData>(context, listen: false).addTask(newText);
                _controller.clear();
                Navigator.pop(context);
              }
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
