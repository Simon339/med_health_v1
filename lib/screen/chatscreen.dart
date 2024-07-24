import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return DefaultTabController(
      length: 2,
      child:  Scaffold(
        appBar:  AppBar(
          //preferredSize: const Size.fromHeight(70),
            backgroundColor: Colors.grey[300],
            elevation: 0,
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(
              size: 25, 
              color: Colors.white, 
              weight: 600
            ),
            centerTitle: false,
            title:  Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Call System",
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 15),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 28
                  ),
                  onPressed:() {},
                  
                ),
              ),
              PopupMenuButton(
                color: Colors.white,
                elevation: 10,
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight:  FontWeight.w500
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight:  FontWeight.w500
                      ),
                    ),  
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Starred messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight:  FontWeight.w500
                      ),
                    )
                  )
                ]
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.indigo,
              indicatorWeight: 3.5,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w300
              ),),
              tabs:  const [
                Tab(text: "CHATS",),
                Tab(text: "CALLS",)
              ]
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Lottie.asset('assets/Undermaintence.json')
                ],
              ),
            ),
          ),
          floatingActionButton:FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.indigo,
            child: const Icon(
              CupertinoIcons.chat_bubble_fill, 
              color: Colors.white,
            ),
          ),
          /*
          TabBarView(
            children: [
              Text("Chat"),
              Text("Calls")
            ],
          ),
          
          */
        ),
      
    );
  }
}

