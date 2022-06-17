// ignore_for_file: file_names

import 'package:app/Page/Budget/Create_Budget.dart';
import 'package:app/Page/Budget/budget.dart';
import 'package:flutter/material.dart';

class BudgetBudget extends StatefulWidget {
  const BudgetBudget({Key? key}) : super(key: key);

  @override
  State<BudgetBudget> createState() => _BudgetBudgetState();
}

class _BudgetBudgetState extends State<BudgetBudget> {
  double _currentSliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff7F3DFF),
              Color(0xff7F3DFF),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/arrow-left-2.png',
                      height: 32,
                      width: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BudgetPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.34,
                  ),
                  const Text(
                    'May',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.34,
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/icons/arrow-right-2.png',
                      height: 32,
                      width: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateBudget(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 547,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Color(0xffFCAC12),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Shopping',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 200),
                                child: Icon(
                                  Icons.warning,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'Remaining \$0',
                            style: TextStyle(
                              fontSize: 29,
                              color: Color(0xff0D0E0F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: <Widget>[
                          Slider(
                            activeColor: const Color(0xffFCAC12),
                            inactiveColor: const Color(0xffE3E5E5),
                            value: _currentSliderValue,
                            min: 0,
                            max: 200,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(
                                () {
                                  _currentSliderValue = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            '\$1200 of \$1000',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff91919F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'You’ve exceed the limit!',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffFD3C4A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.circle,
                                  color: Color(0xff0077FF),
                                ),
                              ),
                              Text(
                                'Transportation',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'Remaining \$350',
                            style: TextStyle(
                              fontSize: 29,
                              color: Color(0xff0D0E0F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: <Widget>[
                          Slider(
                            activeColor: const Color(0xff0077FF),
                            inactiveColor: const Color(0xffE3E5E5),
                            value: _currentSliderValue,
                            min: 0,
                            max: 200,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(
                                () {
                                  _currentSliderValue = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            '\$350 of \$700',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff91919F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                            builder: (context) => const CreateBudget(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF7F3DFF),
                        minimumSize: const Size(343, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text(
                        'Create a budget',
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
            ],
          ),
        ),
      ),
    );
  }
}
