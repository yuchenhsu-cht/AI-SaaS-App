
import 'package:flutter/material.dart';

class MedicationLogScreen extends StatelessWidget {
  const MedicationLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MedicationRecord> records = [
      MedicationRecord(name: '蘇林彩香', time: '2022-10-11T22:00:00', method: '睡前'),
      MedicationRecord(name: '蘇林彩香', time: '2022-10-08T22:00:00', method: '睡前'),
      MedicationRecord(name: '蘇林彩香', time: '2022-10-07T22:00:00', method: '睡前'),
      MedicationRecord(name: '蘇林彩香', time: '2022-10-06T22:00:00', method: '睡前'),
      MedicationRecord(name: '蘇林彩香', time: '2022-10-05T22:00:00', method: '睡前'),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '用藥提醒紀錄',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('name', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text('time', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(child: Text('method', style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: records.length,
                itemBuilder: (context, index) {
                  final record = records[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(record.name)),
                        Expanded(child: Text(record.time.split('T')[0])),
                        Expanded(child: Text(record.method)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicationRecord {
  final String name;
  final String time;
  final String method;

  MedicationRecord({required this.name, required this.time, required this.method});
}
