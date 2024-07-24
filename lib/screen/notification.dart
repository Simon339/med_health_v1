import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_health_v1/components/widgets/menubar.dart';
import '../components/style/style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              Navigator.of(context);
                  Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) => const BottomBar(),
                    ),
                  );
            },
          ),
          title: const Center(
              child: Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.w800),
          ))),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: CupertinoButton(
                  onPressed: () {},
                  child: SvgPicture.asset(Appstyle.searchIcon),
                ),
                suffixIcon: CupertinoButton(
                  onPressed: () {},
                  child: SvgPicture.asset(Appstyle.filtterIcon),
                ),
                hintText: "Search notifications",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return  Slidable(
                    endActionPane: ActionPane(
                      extentRatio: .3,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          icon: Icons.replay,
                          backgroundColor: Colors.white,
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          icon: Icons.delete,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red[700]!,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
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
                        child: ListTile(
                        isThreeLine: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                        leading: const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("lib/components/image/image1.png"),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dr. Geogre Antonio",
                              style: GoogleFonts.bebasNeue(
                                fontSize: 20, 
                                //fontWeight: FontWeight.w600
                              ),
                            ),
                            const Text(
                              "2h ago",
                              style: TextStyle(
                                fontFamily: 'RobotoSlab',
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                        subtitle: const Text(
                            "Please make sure you avail your self for checkup before 13 November 2024, Time: 15H00 ",
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'San Francisco',
                              fontWeight: FontWeight.w500
                              )),
                        ),
                      ),
                    )
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      indent: .08,
                      endIndent: .08,
                      thickness: 0,
                      color: Color(0xFFBDBDBD),
                    ),
                itemCount: 1))
      ]),
    );
  }
}
