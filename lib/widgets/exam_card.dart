import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../screens/exam_detail.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  ExamCard({required this.exam});

  @override
  Widget build(BuildContext context) {
    bool isPast = exam.dateTime.isBefore(DateTime.now());
    Color cardColor = isPast ? Colors.grey.shade300 : Colors.orange;

    return Card(
      color: cardColor,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        title: Text(exam.name),
        subtitle: Row(
          children: [
            Icon(Icons.calendar_today, size: 16),
            SizedBox(width: 5),
            Text(DateFormat('yyyy-MM-dd – HH:mm').format(exam.dateTime)),
            SizedBox(width: 15),
            Icon(Icons.room, size: 16),
            SizedBox(width: 5),
            Text(exam.rooms.join(', ')),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ExamDetailScreen(exam: exam),
            ),
          );
        },
      ),
    );
  }
}
