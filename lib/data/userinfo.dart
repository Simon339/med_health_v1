import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserInfo extends StatelessWidget {
  final now = DateFormat().add_MMMMd().format(DateTime.now());
  UserInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text("Welcome!",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            )),
      ),
      subtitle: Text(
        '${now}',
        style: TextStyle(
          fontSize: 18, 
          color: Colors.blue[100], 
          fontWeight: FontWeight.w800
          ),
      ),
    );
  }
}

