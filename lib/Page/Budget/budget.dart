import 'package:app/Page/Budget/Create_Budget.dart';
import 'package:app/home.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({Key? key}) : super(key: key);

  get plant => null;

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
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
                          builder: (context) => const HomeApp(),
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
                height: 477,
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
                      padding: const EdgeInsets.only(top: 180),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'You don’t have a budget.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff91919F),
                                ),
                              ),
                              Text(
                                'Let’s make one so you in control.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff91919F),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 140,
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
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Create a budget',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
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
