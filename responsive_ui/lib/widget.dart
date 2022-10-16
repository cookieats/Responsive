import 'package:flutter/material.dart';
import 'package:responsive_ui/courses_data.dart';
import 'courses_data.dart';

class  Header extends StatelessWidget {
  const Header ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          width: 500,
          height: 300,
          image: AssetImage('assets/Course0.jpg',
          
          ),
        ),
        Text(
          'Our Courses',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[900],
          ),
        )

        
      ],
    );
  }
}

class CourseTile extends StatelessWidget {
  final Course course;
  const CourseTile({Key? key,
   required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.blueGrey[50],
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                 child: Image.asset(course.image),

              ),
              SizedBox(
                height: 5,
              ),
              Text(course.name,
                textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              
                
              ),
              Text(
                course.time,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
                textAlign: TextAlign.center,
              
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                course.description,
                style: TextStyle(
                  fontSize: 20,
                  
                ),
                textAlign: TextAlign.center,
                
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Subscribe extends StatelessWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          Text('Wanna Learn More?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
          ),
          ElevatedButton(onPressed: (){},
           child: Row(children: [
           Text('Subscribe'),
           Icon(Icons.notifications_active)
           ],
           )
          )
        ],
      )
    );
  }
}
