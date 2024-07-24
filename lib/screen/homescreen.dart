// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import '../components/searchbutton.dart';
import '../components/style/size_config.dart';
import '../components/widgets/drawer.dart';
import '../components/widgets/upcoming.dart';
import '../data/userinfo.dart';
import '../model/services.dart';
import 'notification.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBody: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        iconTheme:
          const IconThemeData(size: 25, color: Colors.black, weight: 600),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: badges.Badge(
                  badgeContent:Text(
                    '1',
                    style:  GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  position: badges.BadgePosition.topStart(top: -15, start: -12),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: Column(
              children: [
                UserInfo(),
                SearchMedical(),
                SizedBox(
                  height: 8,
                ),
                ServicesTab(),
                SizedBox(
                  height: 15,
                ),
                GetBestMedicalService(),
                SizedBox(
                  height: 15,
                ),
                
              ],
            ),
          ),
          UpcomingAppointments(),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}

class GetBestMedicalService extends StatelessWidget {
  const GetBestMedicalService({super.key});

  @override
  Widget build(BuildContext context) => Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: double.infinity,
          height: 190,
          decoration: const BoxDecoration(
              color: Color(0xff1C6BA4),
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(3, 3),
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
                BoxShadow(
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
                    Color.fromRGBO(23, 117, 184, 1),
                    Color.fromARGB(255, 48, 144, 212),
                  ])),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Careapp+\nYour Gateway to Optimal Healthcare",
                        style: GoogleFonts.bebasNeue(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.8,
                          letterSpacing: 1,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                      Text(
                        "Our health, your way. Careapp+ puts quality care at your fingertips",
                        style: GoogleFonts.bebasNeue(
                          letterSpacing: 1,
                          height: 1.8,
                          color: Colors.white60,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }