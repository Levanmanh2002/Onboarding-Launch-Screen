import 'package:app/Page/Budget/budget.dart';
import 'package:app/Page/Home/home.dart';
import 'package:app/Page/Profile/profle.dart';
import 'package:app/Page/Transaction/transaction.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const TransactionPage(),
    const BudgetPage(),
    const Profle(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentSreen = const HomePage();
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageStorage(
            child: currentSreen,
            bucket: bucket,
          ),
          if (isOpen)
            const Positioned(
              bottom: 30,
              left: 100,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/icons/Income.png'),
              ),
            ),
          if (isOpen)
            const Positioned(
              bottom: 30,
              right: 100,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/icons/Expense.png'),
              ),
            ),
          if (isOpen)
            const Positioned(
              bottom: 80,
              left: 176,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/icons/Transactions.png'),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7F3DFF),
        child: Icon(
          isOpen ? Icons.close : Icons.add,
          size: 40,
        ),
        onPressed: () {
          isOpen = !isOpen;
          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentSreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/Home.png',
                          color: currentTab == 0
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 0
                                ? const Color(0xff7F3DFF)
                                : const Color(0xffC6C6C6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentSreen = const TransactionPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/TransactionButton.png',
                          color: currentTab == 1
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          'Transaction',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 1
                                ? const Color(0xff7F3DFF)
                                : const Color(0xffC6C6C6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentSreen = const BudgetPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/Budget.png',
                          color: currentTab == 3
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          'Budget',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 3
                                ? const Color(0xff7F3DFF)
                                : const Color(0xffC6C6C6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 90,
                    onPressed: () {
                      setState(() {
                        currentSreen = const Profle();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/Profile.png',
                          color: currentTab == 2
                              ? const Color(0xff7F3DFF)
                              : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 10,
                            color: currentTab == 2
                                ? const Color(0xff7F3DFF)
                                : const Color(0xffC6C6C6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
