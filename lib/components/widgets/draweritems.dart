import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onPressed;

  const DrawerItems(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(8),
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
      child: InkWell(
        onTap: onPressed,
        child:  SizedBox(
          height: 50,
          child: Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.black
              ),
              const SizedBox(width: 40),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'San Francisco',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
