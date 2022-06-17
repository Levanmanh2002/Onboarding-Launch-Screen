// ignore_for_file: camel_case_types

import 'package:app/home.dart';
import 'package:flutter/material.dart';

class exportdata_2 extends StatefulWidget {
  const exportdata_2({Key? key}) : super(key: key);

  @override
  State<exportdata_2> createState() => _exportdata_2State();
}

class _exportdata_2State extends State<exportdata_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: Image.asset('assets/images/Ilustration.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: const Text(
                "Check your email, we send you the financial report. In certain cases, it might take a little longer, depending on the time period and the volume of activity.",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff7F3DFF),
                onPrimary: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: const Size(343, 56),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeApp(),
                  ),
                );
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}
