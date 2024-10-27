import 'package:flutter/material.dart';
import 'package:to_do/tabs/settings.dart';
import 'package:to_do/tabs/tasks.dart';
import 'package:to_do/themes&colors/my_colors.dart';
import 'package:to_do/widgets/task_form.dart';

class Home extends StatefulWidget {
  static String routeName = "/";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List tabs = [const Tasks(), const Settings()];
  int currentTap = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [MyColors.lightBlue, Theme.of(context).primaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [.22, .22])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Tasks',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: MyColors.lightBlue,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Theme.of(context).primaryColor,
              sheetAnimationStyle:
                  AnimationStyle(duration: const Duration(milliseconds: 650)),
              context: context,
              builder: (context) => const TaskForm(),
            );
          },
          shape: const CircleBorder(
              side: BorderSide(color: Colors.white, width: 4)),
          enableFeedback: true,
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.hardEdge,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          padding: EdgeInsets.zero,
          child: BottomNavigationBar(
              currentIndex: currentTap,
              onTap: (value) => setState(() {
                    currentTap = value;
                  }),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: 'tasks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined), label: 'settings')
              ]),
        ),
        body: tabs[currentTap],
      ),
    );
  }
}
