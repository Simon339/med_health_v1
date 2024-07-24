import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'auth/login.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 7);
              });
            },
            children: [
              Container(
                color: Colors.blue[900],
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(80),
                            child: Text(
                              'Welcome to App Care+!',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Lottie.asset('assets/doctorhi.json',
                              height: 300,
                              reverse: true,
                              repeat: true,
                              fit: BoxFit.cover),
                              const SizedBox(height: 10,),
                          const Text(
                            'We are so glad you are here!  App Care+ is your one-stop shop for all things health, ready to give your mental and life a boost.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                         const Padding(
                            padding:  EdgeInsets.all(80),
                            child: Text(
                              'Keep your diary',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Lottie.asset('assets/diary.json',
                              height: 300,
                              reverse: true,
                              repeat: true,
                              fit: BoxFit.cover),
                          const Text(
                            'Keeping a diary is a journey of self-discovery, growth, and pure joy. Do not let worries about security or convenience hold you back. Join the App Care+ family and unleash the writer within! Remember, your story is worth telling, and we are here to help you tell it your way.Start your diary adventure today with App Care+! Lets make your inner voice sing!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(80),
                        child: Text(
                          'CarePoint',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Lottie.asset('assets/near_doctor.json',
                          reverse: true, repeat: true, fit: BoxFit.cover),
                      const SizedBox(height: 50,) ,
                      const Text(
                        'Skip the waitlist and scheduling hassles. Connect with doctors, nurses, and specialists near you, anytime, anywhere.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(80),
                        child: Text(
                          'Make Appointment',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Lottie.asset('assets/Appointment.json',
                          height: 300,
                          reverse: true,
                          repeat: true,
                          fit: BoxFit.cover),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'No more waiting rooms. Schedule convenient appointments with trusted providers near you, reclaiming precious time and reducing unnecessary stress.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(80),
                        child: Text(
                          'Immediate Access to Healthcare Professionals',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Lottie.asset('assets/calldoctor.json',
                          height: 300,
                          reverse: true,
                          repeat: true,
                          fit: BoxFit.cover),
                      const Text(
                        'Gain access to expert medical advice and support from qualified professionals, right at your fingertips, with App Care+.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(80),
                        child: Text(
                          'Unlocking Healthy Food Choices',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Lottie.asset('assets/healthyfood.json',
                          height: 300,
                          reverse: true,
                          repeat: true,
                          fit: BoxFit.cover),
                      const Text(
                        'Empower your health journey. Discover the keys to making informed and nutritious food choices with our comprehensive program.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(80),
                        child: Text(
                          'Master Your Mind: Tools for Mental Resilience',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Lottie.asset('assets/mental_wellness.json',
                          height: 300,
                          reverse: true,
                          repeat: true,
                          fit: BoxFit.cover),
                      const Text(
                        'From reactive to proactive. Discover a transformative approach to mental health. Build the skills and knowledge to safeguard your mind and navigate stress, anxiety, and uncertainty with resilience.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                      : GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(5);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SmoothPageIndicator(
                      controller: _controller,
                      effect: const ExpandingDotsEffect(
                          dotColor:  Color.fromARGB(226, 255, 255, 255),
                          activeDotColor: Colors.deepPurple),
                      count: 6),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const LoginScreen();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                ],
              )),
        ],
      ),
    );
  }
}
