// ignore_for_file: file_names

import 'package:app/Onboarding/Login/login.dart';
import 'package:flutter/material.dart';

class PasswordEmailSent extends StatefulWidget {
  const PasswordEmailSent({Key? key}) : super(key: key);

  @override
  State<PasswordEmailSent> createState() => _PasswordEmailSentState();
}

class _PasswordEmailSentState extends State<PasswordEmailSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/Illustrationf.png'),
            ),
            const Text(
              'Your email is on the way',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      'Check your email test@test.com and follow the instructions to reset your password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF7F3DFF),
                minimumSize: const Size(343, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Back to login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
