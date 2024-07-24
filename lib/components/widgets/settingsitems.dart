import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../forwardbutton.dart';

// ignore: must_be_immutable
class AppSettingsItem extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  bool isButtonPress;
  final String? value;
  AppSettingsItem(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.iconColor,
      required this.icon,
      required this.onTap,
      required this.isButtonPress,
      this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(3, 3),
              blurRadius: 8,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.grey.shade100,
              offset: const Offset(-3, -3),
              blurRadius: 8,
              spreadRadius: 1,
            )
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
              ])),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
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
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(3, 3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(-3, -3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      )
                    ]),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              title,
              style: GoogleFonts.bebasNeue(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            value != null
                ? Text(
                    value!,
                    style: GoogleFonts.bebasNeue(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  )
                : const SizedBox(),
            const SizedBox(width: 20),
            ForwardButton(
              onTap: onTap,
              isButtonPress: isButtonPress,
            ),
          ],
        ),
      ),
    );
  }
}
