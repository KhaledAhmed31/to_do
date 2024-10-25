import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do/models/task_model.dart';
import 'package:to_do/themes&colors/my_colors.dart';
import 'package:to_do/widgets/task_card.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => TasksState();
}

class TasksState extends State<Tasks> {
  static List<TaskModel> tasks = [];

  EasyInfiniteDateTimelineController controller =
      EasyInfiniteDateTimelineController();
  late bool isDark;
  DateTime currentDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: EasyInfiniteDateTimeLine(
            controller: controller,
            showTimelineHeader: false,
            firstDate: DateTime(2018),
            focusDate: currentDay,
            lastDate: DateTime(2028),
            onDateChange: (selectedDate) {
              setState(() {
                currentDay = selectedDate;
              });
            },
            dayProps: EasyDayProps(
                todayStyle: DayStyle(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: MyColors.lightBlue, width: 3))),
                activeDayStyle: DayStyle(
                    monthStrStyle: TextStyle(
                        color: MyColors.lightBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    dayStrStyle: TextStyle(
                        color: MyColors.lightBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    dayNumStyle: TextStyle(
                        color: MyColors.lightBlue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                inactiveDayStyle: const DayStyle(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) => TaskCard(taskModel: tasks[index]),
          ),
        ),
      ],
    );
  }
}
