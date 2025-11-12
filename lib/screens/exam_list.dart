import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Exam> exams = [
    Exam(name: "Пресметување во облак", dateTime: DateTime(2025, 12, 1, 9, 0), rooms: ["lab 12"]),
    Exam(name: "Бази на податоци", dateTime: DateTime(2025, 12, 2, 10, 0), rooms: ["lab 2"]),
    Exam(name: "Дистрибуирани системи", dateTime: DateTime(2025, 12, 3, 11, 0), rooms: ["bal 3"]),
    Exam(name: "Информациска безбедност", dateTime: DateTime(2025, 12, 4, 9, 30), rooms: ["lab 13"]),
    Exam(name: "Мобилни информациски системи", dateTime: DateTime(2025, 12, 5, 10, 30), rooms: ["105"]),
    Exam(name: "Виртуелизација", dateTime: DateTime(2025, 12, 1, 9, 0), rooms: ["lab 12"]),
    Exam(name: "Дизајн на компјутерски мрежи", dateTime: DateTime(2025, 12, 2, 10, 0), rooms: ["lab 2"]),
    Exam(name: "Етичко хакирање", dateTime: DateTime(2025, 12, 3, 11, 0), rooms: ["bal 3"]),
    Exam(name: "Криптографија", dateTime: DateTime(2025, 12, 4, 9, 30), rooms: ["lab 13"]),
    Exam(name: "Администрација на мрежи", dateTime: DateTime(2025, 12, 5, 10, 30), rooms: ["105"]),

  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити - 212050'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) => ExamCard(exam: exams[index]),
      ),
      bottomNavigationBar: Container(
        color: Colors.orange,
        padding: EdgeInsets.all(8),
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
