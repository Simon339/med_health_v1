import 'package:flutter/material.dart';

import 'forgotpassword.dart';
import 'signup.dart';

class LoginScreen extends StatefulWidget {
  //final void Function()? onTap;
  const LoginScreen({
    super.key,
    //required this.onTap
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF2313B9),
            Color(0xFF2239C0),
            Color(0xFF2139F3)
          ])),
          child: const Padding(
            padding: EdgeInsets.only(top: 70.0, left: 19),
            child: Text(
              'Hello\nSign in',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(40)),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Email',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF681028)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          fillColor: Colors.grey,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              child: const Icon(Icons.visibility_off)),
                          label: const Text(
                            'Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF681028)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          fillColor: Colors.grey,
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Forgotpassword();
                            },
                            ),
                            );
                          },
                          child: const Text('Forgot Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0D47A1),
                                  fontSize: 17)),
                        ),
                      ),
                      const SizedBox(height: 70),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 55,
                            width: 255,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFF2313B9),
                                  Color(0xFF2239C0),
                                  Color(0xFF2139F3)
                                ])),
                            child: const Center(
                              child: Text('SIGN IN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white)),
                            )),
                      ),
                      const SizedBox(
                        height: 170,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "Don't have account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SigUpScreen();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              )),
        ),
      ],
    ));
  }
}
