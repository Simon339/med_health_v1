import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';


class EditAccount extends StatelessWidget {
  final now = DateFormat.yMEd().format(DateTime.now());
  EditAccount({super.key});

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
            "Edit Profile",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: AssetImage(
                                "assets/placeholder.jpg",
                              ),
                            )
                          )
                        ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(100),
                          color: const Color(0xFF6379F3),
                        ),
                        child: const Icon(
                          Ionicons.camera,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 50),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10) 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.grey
                        )
                      ),
                      label: const Text(
                        'Full Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      prefixIcon: const Icon(Ionicons.person),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10) 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.grey
                        )
                      ),
                      label: const Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10) 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.grey
                        )
                      ),
                      label: const Text(
                        'Phone No.',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.phone),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10) 
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.grey
                        )
                      ),
                      label: const Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      prefixIcon: const Icon(Ionicons.finger_print),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        side: BorderSide.none,
                        shape: const StadiumBorder()
                      ),
                      onPressed: () {}, 
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 18,
                          color:Colors.white,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    )
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Joined  ",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                          ),
                          children: [
                            TextSpan(
                              text: now,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.withOpacity(0.1),
                        elevation: 0,
                        foregroundColor: Colors.red,
                        shape: const StadiumBorder(),
                        side:  BorderSide.none
                        ),
                        child: const Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w800
                          ),
                        )
                      )
                    ],
                  ),
                ],
              )
            )
            ],
          ),
        ),
      ),
    );
  }
}

/*
  EditItem(
    title: "Gender",
    widget: Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
               gender = "man";
              });
          },
        style: IconButton.styleFrom(
          backgroundColor: gender == "man"
            ? Colors.lightBlueAccent
              : Colors.white,
            fixedSize: Size(50, 50)),
            icon: Icon(
              Ionicons.male,
               color:
                 gender == "man" ? Colors.white : Colors.black,
                   size: 18,
              ),
             ),
        const SizedBox(width: 20),
          IconButton(
            onPressed: () {
              setState(() {
                gender = "woman";
                });
            },
        style: IconButton.styleFrom(
          backgroundColor: gender == "woman"
            ? Colors.pinkAccent
              : Colors.white,
              fixedSize: Size(50, 50)),
            icon: Icon(
              Ionicons.female,
                color:
                gender == "woman" ? Colors.white : Colors.black,
                 size: 18,
            ),
        ),
      ],
    )),

    class EditAccount extends StatefulWidget {
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  String gender = "man";

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
              "Edit Profile",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    fixedSize: const Size(40, 40),
                  ),
                  icon: const Icon(
                    CupertinoIcons.check_mark,
                    color: Colors.black,
                  )),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EditItem(
                    title: "",
                    widget: Column(
                      children: [
                        const Text(
                          "Profile Picture",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          "assets/placeholder.jpg",
                          height: 100,
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.lightBlueAccent,
                          ),
                          child: const Text("Upload Image"),
                        )
                      ],
                    )),
                const EditItem(title: "Name", widget: TextField()),
                const SizedBox(height: 40),
                
                const SizedBox(height: 40),
                EditItem(
                  title: "Age",
                  widget: TextField(),
                ),
                const SizedBox(height: 40),
                EditItem(
                  title: "Height",
                  widget: TextField(),
                ),
                const SizedBox(height: 40),
                EditItem(
                  title: "Email",
                  widget: TextField(),
                ),
                const SizedBox(height: 40),
                EditItem(
                  title: "Phone No.",
                  widget: TextField(),
                ),
                const SizedBox(height: 40),
                EditItem(
                  title: "Address",
                  widget: TextField(),
                ),
              ],
            ),
          ),
        ));
  }
}
*/
