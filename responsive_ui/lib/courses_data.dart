

class Course{
  final String name;
  final String image;
  final String time;
  final String description;

  Course({
    required this.name,
    required this.image,
    required this.time,
    required this.description


  });

  static final courses = [
    Course(
      name: 'Adaptive Demo',
      image: 'assets/Course1.jpg',
      time : '2H 34M',
      description: 'Learning Adaptive Demo and Implement It To Your Code'
    ),
    Course(
      name: 'Responsive Demo',
      image: 'assets/course3.jpg',
      time : '2H 34M',
      description: 'Learning Adaptive Demo and Implement It To Your Code'
    ),
  ];
}