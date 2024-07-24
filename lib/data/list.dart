// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final _lightColors = [
  Colors.indigo,
  Colors.grey,
  Colors.blue,
  Colors.orange,
  Colors.pinkAccent,
  Colors.tealAccent,
  Colors.purple
];

class Services {
  final String image;
  final Color color;
  Services({
    required this.image,
    required this.color,
  });
}

// Services List OF DATA

List<Services> servicesList = [
  Services(
    image: 'assets/icon/doctor-Icon.svg',
    color: const Color(0xffDCEDF9),
  ),
  Services(
    image: 'assets/icon/noun-pill.svg',
    color: const Color(0xffFAF0DB),
  ),
  Services(
    image: 'assets/icon/noun-medical-test.svg',
    color: const Color(0xffD6F6FF),
  ),
  Services(
    image: 'assets/icon/noun-corona.svg',
    color: const Color(0xffF2E3E9),
  ),
];

/// Upcoming Appointments

class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
  });
}

// Upcoming Appointments List OF DATA

List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: DateFormat("dd\nEEE").format(DateTime.now()),
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Akhter",
    subTitle: "Therapy",
    color: Colors.indigo,
  ),
  Appointments(
    date: DateFormat("dd\nEEE").format(DateTime.now()),
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Robnehood",
    subTitle: "Dentist",
    color: Colors.blue,
  ),
  Appointments(
    date: DateFormat("dd\nEEE").format(DateTime.now()),
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Robnehood",
    subTitle: "Dentist",
    color: Colors.orange,
  ),
];
