import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:med_health_v1/components/forwardbutton.dart';
import 'package:med_health_v1/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import '../components/widgets/settingsitems.dart';
import '../components/widgets/switch.dart';
import '../data/useracc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isoff = false;
  bool isDarkMode = false;
  bool isLightMode = true;
  bool isButtonPress = false;
  void buttonPressed() {
    setState(() {
      if (isButtonPress == false) {
        isButtonPress == true;
      } else if (isButtonPress == true) {
        isButtonPress == false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Center(
          child: Text(
            "Settings ",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Account",
              style: GoogleFonts.bebasNeue(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
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
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade200,
                        Colors.grey.shade300,
                        Colors.grey.shade400,
                      ])),
              child: Row(
                children: [
                  const Icon(Icons.account_circle_rounded,
                      size: 70, color: Colors.grey),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Dee',
                        style:GoogleFonts.bebasNeue(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Personal Info",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'San Francisco',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ForwardButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditAccount()));
                    },
                    isButtonPress: isButtonPress,
                  )
                ],
              ),
            ),
            const SizedBox(height: 70),
             Text(
              'App Settings',
              style: GoogleFonts.bebasNeue(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            AppSettingsItem(
              title: "Language",
              icon: Ionicons.earth,
              bgColor: Colors.green.shade100,
              iconColor: Colors.green,
              value: "English",
              onTap: () {},
              isButtonPress: isButtonPress,
            ),
            const SizedBox(height: 20),
            MySwitchbutton(
                title: "Notifications",
                icon: Icons.notifications,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                value: isoff,
                onTap: (value) {
                  /*setState(() {
                    isDarkMode = value;
                  });*/
                }), //turn on or off notifications

            const SizedBox(height: 20),
            MySwitchbutton(
                title: "Display",
                icon: Icons.sunny,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: Provider.of<ThemeProvider>(context).isDarkMode,
                onTap: (value) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme()),
            const SizedBox(height: 20),
            AppSettingsItem(
              title: "Help",
              icon: Ionicons.nuclear,
              bgColor: Colors.pink.shade100,
              iconColor: Colors.pink,
              onTap: () {},
              isButtonPress: isButtonPress,
            ),
            const SizedBox(height: 20),
            AppSettingsItem(
              title: "About",
              icon: Ionicons.information,
              bgColor: Colors.grey.shade200,
              iconColor: Colors.grey,
              value: "",
              onTap: buttonPressed,
              isButtonPress: isButtonPress,
            ),
          ],
        ),
      ),
    );
  }
}
