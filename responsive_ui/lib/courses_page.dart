import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_ui/widget.dart';
import 'courses_data.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Course.courses;
    return Scaffold(
      appBar: AppBar(
          title: const Text('Responsive Course'),
          centerTitle: true,
          leading: ResponsiveVisibility(
            hiddenWhen: const [Condition.largerThan(name: TABLET)],
            child: IconButton(
              onPressed: (){},
               icon: const Icon(Icons.menu),),
          ),
          actions: [
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [Condition.largerThan(name: TABLET)],
              child: TextButton(
                onPressed: () {},
                child: const Text('Courses'),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [Condition.largerThan(name: TABLET)],
              child: TextButton(
                onPressed: () {},
                child: Text('Courses') 
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.mark_email_unread_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
          ]),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          const Center(
            child: Header(),
          ),
          const SizedBox(
            height: 15,
          ),
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowPadding: EdgeInsets.all(30),
            columnPadding: EdgeInsets.all(30),
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1, 
                  child: CourseTile(course: courses[0])),
              ResponsiveRowColumnItem(
                  rowFlex: 1, 
                  child: CourseTile(course: courses[1])),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          const Center(
            child: Subscribe(),
          ),
        ],
      ),
    );
  }
}
