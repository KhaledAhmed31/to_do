import 'package:flutter/material.dart';
import 'package:to_do/models/task_model.dart';
import 'package:to_do/themes&colors/my_colors.dart';

class TaskCard extends StatefulWidget {
  final TaskModel taskModel;

  const TaskCard({super.key, required this.taskModel});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        height: 100,
        child: Center(
          child: ListTile(
            leading: VerticalDivider(
              color: MyColors.lightBlue,
              thickness: 4,
            ),
            title: Text(
              widget.taskModel.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(
              widget.taskModel.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: MyColors.lightBlue,
                    padding: const EdgeInsets.symmetric(horizontal: 21)),
                onPressed: () {},
                icon: const Icon(
                  Icons.done_outline_rounded,
                  color: Colors.white,
                  size: 25,
                )),
          ),
        ),
      ),
    );
  }
}
