import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/widgets/griddashboard.dart';

class Healthscreen extends StatelessWidget {
  const Healthscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Joe Doe",
                        style: GoogleFonts.bebasNeue(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Welcome to all things health",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.blue[300],
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: () {}, 
                    icon: const Icon(
                      Icons.run_circle,
                      size: 52,
                    )
                  )
                ],
              ),
            ),
          const SizedBox(height: 50),
          const GridDashboard(),
          const SizedBox(height: 10),
          
        ],
      ),
    );
  }
}
