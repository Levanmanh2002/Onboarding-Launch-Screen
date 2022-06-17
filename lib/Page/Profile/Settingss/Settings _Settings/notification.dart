import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsNotification extends StatefulWidget {
  const SettingsNotification({Key? key}) : super(key: key);

  @override
  State<SettingsNotification> createState() => _SettingsNotificationState();
}

class _SettingsNotificationState extends State<SettingsNotification> {
  bool val1 = true;
  onChangeMethod1(bool newValue) {
    setState(() {
      val1 = newValue;
    });
  }

  bool val2 = true;
  onChangeMethod2(bool newValue) {
    setState(() {
      val2 = newValue;
    });
  }

  bool val3 = true;
  onChangeMethod3(bool newValue) {
    setState(() {
      val3 = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcen(),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ListTile(
                title: Text(
                  'Expense Alert',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    'Get notification about you’re expense',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              CupertinoSwitch(
                trackColor: const Color(0xffEEE5FF),
                activeColor: const Color(0xff7F3DFF),
                value: val1,
                onChanged: (newLalue) {
                  onChangeMethod1(newLalue);
                },
              ),
              const ListTile(
                title: Text(
                  'Budget',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 180),
                  child: Text(
                    'Get notification when you’re budget exceeding the limit',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              CupertinoSwitch(
                trackColor: const Color(0xffEEE5FF),
                activeColor: const Color(0xff7F3DFF),
                value: val2,
                onChanged: (newLalue) {
                  onChangeMethod2(newLalue);
                },
              ),
              const ListTile(
                title: Text(
                  'Tips & Articles',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    'Small & useful pieces of pratical financial advice',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              CupertinoSwitch(
                trackColor: const Color(0xffEEE5FF),
                activeColor: const Color(0xff7F3DFF),
                value: val3,
                onChanged: (newLalue) {
                  onChangeMethod3(newLalue);
                },
              )
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
          "Notification",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Widget customSwith(String text, bool val, Function onChangeMethod) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 22, left: 20, right: 30),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           text,
  //           style: const TextStyle(
  //             fontSize: 19,
  //             color: Color(0xff292B2D),
  //           ),
  //         ),
  //         const Spacer(),
  //         CupertinoSwitch(
  //           trackColor: const Color(0xffEEE5FF),
  //           activeColor: const Color(0xff7F3DFF),
  //           value: val,
  //           onChanged: (newLalue) {
  //             onChangeMethod(newLalue);
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }
}
