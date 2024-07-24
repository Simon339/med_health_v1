// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordRest() async {
    //try {
    //await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
    //showDialog(context: context, builder: (context){return AlertDialog(content: Text('Reset link has been sent to your email'),);});
    //} on FirebaseAuthException catch (e) {
    //print(e);
    //showDialog(context: context, builder: (context){return AlertDialog(content: Text(e.message.toString()),);});
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2239C0),
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Center(
              child: Text(
            "Password Reset",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ))
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Enter your Email to receive Password reset link',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF424242),
                  fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF681028))),
                  hintText: 'Email',
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: () {}, //passwordRest(),delete () {},
            child: const Text(
              'Reset Password',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            color: const Color(0xFF2239C0),
          )
        ],
      ),
    );
  }
}
