// ignore_for_file: avoid_unnecessary_containers, unnecessary_null_comparison, unused_field
import 'dart:io';

import 'package:app/Onboarding/Login/login.dart';
import 'package:app/Page/Profile/Account/account.dart';
import 'package:app/Page/Profile/Export%20Data/exportdata.dart';
import 'package:app/Page/Profile/Settingss/settings.dart';
import 'package:flutter/material.dart';

class Profle extends StatefulWidget {
  const Profle({Key? key}) : super(key: key);

  @override
  State<Profle> createState() => _ProfleState();
}

class _ProfleState extends State<Profle> {
  late File _pickedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              color: const Color(0xffF6F6F6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.only(left: 32, right: 32, top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                "Username",
                                style: TextStyle(
                                    color: Color(0xff91919F),
                                    fontFamily: "Roboto",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Anh Bao",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  title: Text(
                                    'Choose option',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  content: ListTile(
                                    title: Text("data"),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEEE5FF),
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/wallet-3.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Account"),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AccountProfile(),
                              ),
                            );
                          },
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEEE5FF),
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/settings.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Settings"),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingsProfile(),
                              ),
                            );
                          },
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffEEE5FF),
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/icons/upload.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Export Data"),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExportDataProfile(),
                              ),
                            );
                          },
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFE2E4),
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/icons/logout.png'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Logout",
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 217,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                      right: 20,
                                      bottom: 10,
                                    ),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icons/Line 5.png',
                                          ),
                                          const Text(
                                            "Logout?",
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            "Are you sure do you wanna logout?",
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary:
                                                      const Color(0xffEEE5FF),
                                                  minimumSize:
                                                      const Size(152, 46),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'No',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff7F3DFF),
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Login(),
                                                    ),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary:
                                                      const Color(0xff7F3DFF),
                                                  minimumSize:
                                                      const Size(152, 46),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                                child: const Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontFamily: 'Montserrat',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
