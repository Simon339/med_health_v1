// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  final Function()? onTap;
  bool isButtonPress;
  ForwardButton({super.key, required this.onTap, required this.isButtonPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 55,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color:
                  isButtonPress ? Colors.grey.shade200 : Colors.grey.shade400,
            ),
            boxShadow: isButtonPress
                ? []
                : [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(3, 3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    )
                  ]),
        child: const Icon(
          CupertinoIcons.chevron_forward,
        ),
      ),
    );
  }
}
