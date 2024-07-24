import 'package:flutter/material.dart';

class SignOutbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  const SignOutbutton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade100,
            offset: const Offset(-1, -1),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]
      ),
      child: ListTile(
        onTap: onPressed,
        leading:Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            icon, 
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
