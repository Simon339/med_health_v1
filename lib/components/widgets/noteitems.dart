import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_health_v1/model/diarynote.dart';

final _lightColors = [
  Colors.indigo,
  Colors.grey,
  Colors.blue,
  Colors.orange,
  Colors.pinkAccent,
  Colors.tealAccent,
  Colors.purple
];

class NoteItems extends StatelessWidget {
  const NoteItems({
    Key? key,
    required this.diarynotes,
    required this.index,
  }) : super(key: key);

  final DiaryNotes diarynotes;
  final int index;

  @override
  Widget build(BuildContext context) {
    final color = _lightColors[index % _lightColors.length];
    final time = DateFormat.yMMMd().format(diarynotes.createdTime);
    final minHeight = getMinHeight(index);
    return Card(
        color: color,
        child: Container(
          padding: const EdgeInsets.all(8),
          constraints: BoxConstraints(minHeight: minHeight),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(0, 5),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, -5),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade200,
                    color,
                  ])),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  time,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(height: 4),
                Text(
                  diarynotes.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20),
                )
              ]),
        ));
  }

  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }
}
