// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FeedBackScreen extends StatelessWidget {
  final msgController = TextEditingController();
  FeedBackScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
          title: const Center(
              child: Text(
            "FeedBack",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  child: Container(
                    width: double.infinity,
                    height: 70,
                  ),
                ),
                const Positioned(
                    left: 25,
                    top: 5,
                    child: Text(
                      'FeedBack',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                const Positioned(
                    top: 32,
                    left: 25,
                    child: Text(
                      'Welcome to our FeedBack form',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                  child:const  Center(
                    child: Text(
                      'Tell Us How We Can Improve',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: const Offset(3, 3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey.shade100,
                          offset: const Offset(-3, -3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        )
                      ],
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFEEEEEE),
                            Color(0xFFE0E0E0),
                            Color(0xFFF5F5F5),
                          ])),
                  child: TextField(
                    maxLines: 15,
                    decoration: InputDecoration(
                      hintText: 'Write Your Thoughts About The App...',
                      labelText: 'Your thoughts about our App',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                  child: Text('How Would You Rate our App?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        5,
                        (index) => IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_outlined,
                              color: Colors.red,
                              size: 25,
                            )))),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: const Offset(3, 3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(-3, -3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      )
                    ],
                    gradient: const LinearGradient(colors: [
                      Color(0xFF2313B9),
                      Color(0xFF2239C0),
                      Color(0xFF2139F3)
                    ]),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Send',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ],
            
          
        ),
      ),
    );
  }
}
/* 
  gradient: LinearGradient(
    colors: [
      Color(0xFF2313B9),
      Color(0xFF2239C0),
      Color(0xFF2139F3)
    ]
  )
*/