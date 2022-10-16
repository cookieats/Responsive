
import 'package:flutter/material.dart';
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
        actions: [
          TextButton(onPressed: (){}, child: Text('Courses'),),
          TextButton(onPressed: (){}, child: Text('About'),),
          IconButton(onPressed: (){}, icon: Icon(Icons.mark_email_unread_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined)),
        ]),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          const Center(child: Header(),),
          const SizedBox(height: 30,),
          Column(
            children: [
              CourseTile(course: courses[0]),
              CourseTile(course: courses[1]),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          const Center(
            child: Subscribe(),
          ),

        ],
      ),  
    );
  }
}