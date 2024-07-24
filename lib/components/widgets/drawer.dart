import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_health_v1/components/sign_outbtn.dart';
import 'package:med_health_v1/screen/appointments.dart';
import 'package:med_health_v1/screen/notification.dart';
import '../../screen/auth/profilescreen.dart';
import '../../screen/feedback.dart';
import '../../screen/healthscreen.dart';
import '../../screen/settings.dart';
import 'draweritems.dart';

class MyDrawer extends StatelessWidget {
  //final void Function()? onProfileTap;
  //final void Function()? onUsersTap;
  //final void Function()? onSignOutTap;
  const MyDrawer({
    super.key,
    //required this.onProfileTap,
    //required this.onUsersTap,
    //required this.onSignOutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          InkWell(
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const ProfileScreen(),
                  )),
              child: buildHeader()),
          const Divider(
            thickness: 1,
            height: 10,
            color: Colors.black,
          ),
          //const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
          //const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                DrawerItems(
                  name: "Home",
                  icon: Icons.home,
                  onPressed: () {
                    Navigator.pop(context);

                  },
                ),
                const SizedBox(height: 8),
                DrawerItems(
                  name: "Notifications",
                  icon: Icons.notifications,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                const Divider(
                  thickness: 2,
                  height: 10,
                  color: Colors.black,
                ),
                const SizedBox(height: 2),
                DrawerItems(
                  name: "Habbit Tracker",
                  icon: Icons.art_track,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 8),
                DrawerItems(
                  name: "Healthy Lifestyle",
                  icon: Icons.fastfood,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Healthscreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                const Divider(
                  thickness: 2,
                  height: 10,
                  color: Colors.black,
                ),
                const SizedBox(height: 2),
                DrawerItems(
                  name: "Appointmets",
                  icon: CupertinoIcons.calendar,
                  onPressed: () {
                    Navigator.pop(context);
                    MaterialPageRoute(
                      builder: (context) => AppointmentsScreen(),
                    );
                  },
                ),
                const SizedBox(height: 8),
                DrawerItems(
                  name: "Feedback",
                  icon: Icons.feedback_rounded,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FeedBackScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                DrawerItems(
                  name: "Settings",
                  icon: Icons.settings,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 25),
                SignOutbutton(
                  onPressed: (){}, 
                  label: "Sign Out", 
                  icon: Icons.logout
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildHeader() => InkWell(
    child: Container(
      decoration: BoxDecoration(
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade100,
            offset: const Offset(-1, -1),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 60,
          backgroundImage: AssetImage("assets/placeholder.jpg"),
        ),
        const SizedBox(height: 15),
        Text('Joe Doe',
          style: GoogleFonts.bebasNeue(
            fontSize: 25, 
            color: Colors.blue[100]
          )
        ),
      ],
    ),
  ));
}


/*backgroundColor: Theme.of(context).colorScheme.secondary,*/
