// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:app/Onboarding/Login/login.dart';
import 'package:app/Onboarding/SignUp/signup.dart';
import 'package:app/Onboarding/slide.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class OnboarDing extends StatefulWidget {
  const OnboarDing({Key? key}) : super(key: key);

  @override
  State<OnboarDing> createState() => _OnboarDingState();
}

class _OnboarDingState extends State<OnboarDing> {
  int _currentPage = 0;
  late List<Slide> _slides = [];
  late PageController _pageController = PageController();

  @override
  void initState() {
    _currentPage = 0;
    _slides = [
      Slide(
          "assets/images/Ilustration1.png",
          "Gain total control of your money",
          "Become your own money manager and make every cent count"),
      Slide("assets/images/Illustration2.png", "Know where your money goes",
          "Track your transaction easily, with categories and financial report "),
      Slide("assets/images/Ilustration3.png", "Planning ahead",
          "Setup your budget for each category so you in control"),
    ];
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  List<Widget> _buildSlides() {
    return _slides.map(_buildSlide).toList();
  }

  Widget _buildSlide(Slide slide) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(32),
            child: Image.asset(
              slide.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Text(
            slide.heading,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Text(
            slide.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff91919F),
            ),
          ),
        ),
        const SizedBox(
          height: 250,
        )
      ],
    );
  }

  void _handLingOnPageChanged(int page) {
    setState(() => _currentPage = page);
  }

  Widget _buildPageIndicator() {
    Row row = Row(mainAxisAlignment: MainAxisAlignment.center, children: []);
    for (int i = 0; i < _slides.length; i++) {
      row.children.add(_buildPageIndicatorItem(i));
      if (i != _slides.length - 1) {
        row.children.add(const SizedBox(
          width: 12,
        ));
      }
    }
    return row;
  }

  Widget _buildPageIndicatorItem(int index) {
    return Container(
      width: index == _currentPage ? 12 : 6,
      height: index == _currentPage ? 12 : 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == _currentPage
            ? const Color(0xff7F3DFF)
            : const Color(0xffEEE5FF),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _handLingOnPageChanged,
            physics: const BouncingScrollPhysics(),
            children: _buildSlides(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                _buildPageIndicator(),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: SizedBox(
                    width: double.infinity,
                    child: GradientButton(
                      callback: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        ),
                      },
                      gradient: const LinearGradient(colors: [
                        Color(0xff7F3DFF),
                        Color(0xff7F3DFF),
                      ]),
                      elevation: 0,
                      increaseHeightBy: 20,
                      increaseWidthBy: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: SizedBox(
                    width: double.infinity,
                    child: GradientButton(
                      callback: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        ),
                      },
                      gradient: const LinearGradient(colors: [
                        Color(0xffEEE5FF),
                        Color(0xffEEE5FF),
                      ]),
                      elevation: 0,
                      increaseHeightBy: 20,
                      increaseWidthBy: double.infinity,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7F3DFF),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
