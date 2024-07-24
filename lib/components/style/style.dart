import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Appstyle {
  static const String profile = "assets/profile.png";
  static const String image1 = "assets/image1.jpg";

  static const String filtterIcon = "assets/icon/adjust-horizontal-alt.svg";
  static const String searchIcon = "assets/icon/search.svg";

  // Bottom Bar icons
  static const String homeIcon = "assets/icon/home.svg";
  static const String chatIcon = "assets/icon/live-chat-headset-svgrepo-com.svg";
  static const String reportIcon = "assets/icon/doctor-Icon.svg";
  static const String notificationsIcon = "assets/icon/notifications.svg";

// App Colors
  static const primarySwatch = Color(0xFF1565C0);
  static const inputFillColor = Color(0xffEEF6FC);

  // App Theme Data..

  static ThemeData? theme = ThemeData(
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: const Color(0xff0E1012),
      displayColor: const Color(0xff0E1012),
    ),
  );
}