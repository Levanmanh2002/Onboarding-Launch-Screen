import 'package:app/Page/Profile/Settingss/Settings%20_Settings/currency.dart';
import 'package:app/Page/Profile/Settingss/Settings%20_Settings/language.dart';
import 'package:app/Page/Profile/Settingss/Settings%20_Settings/notification.dart';
import 'package:app/Page/Profile/Settingss/Settings%20_Settings/security.dart';
import 'package:app/Page/Profile/Settingss/Settings%20_Settings/theme.dart';
import 'package:flutter/material.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({Key? key}) : super(key: key);

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcen(),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Currency',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Tab(
                        child: Text(
                          'USD',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff91919F),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsCurrency(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Language',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Tab(
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff91919F),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsLanguage(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Theme',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Tab(
                        child: Text(
                          'Dark',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff91919F),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsTheme(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Security',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Tab(
                        child: Text(
                          'Fingerprint',
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff91919F),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsSecurity(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Notification',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsNotification(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'About',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Tab(
                        child: Text(
                          'Help',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff292B2D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.19,
                        color: Color(0xff7F3DFF),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildcen() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        
      ),
    );
  }
}
