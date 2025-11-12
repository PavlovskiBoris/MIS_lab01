import 'package:flutter/material.dart';
import '../models/exam.dart';
import 'package:intl/intl.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  ExamDetailScreen({required this.exam});

  @override
  Widget build(BuildContext context) {
    Duration difference = exam.dateTime.difference(DateTime.now());
    int days = difference.inDays;
    int hours = difference.inHours % 24;

    return Scaffold(
      appBar: AppBar(
        title: Text(exam.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Име на предмет: ${exam.name}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 5),
                Text('Датум: ${DateFormat('yyyy-MM-dd – HH:mm').format(exam.dateTime)}'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.room),
                SizedBox(width: 5),
                Text('Простории: ${exam.rooms.join(', ')}'),
              ],
            ),
            SizedBox(height: 20),
            Text('Време до испит: $days дена, $hours часа',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
