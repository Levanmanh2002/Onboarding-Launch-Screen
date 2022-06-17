import 'package:app/Page/Profile/Account/Account%20_Account/Edit.dart';
import 'package:flutter/material.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccountEdit(),
                ),
              );
            },
            icon: const Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xffF1F1FA),
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage('assets/icons/Bank.png'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Paypal",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$2400",
                    style: TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff212325),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    children: const [
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFCEED4),
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Frame 1.png'),
                  ),
                ),
              ),
              title: const Text(
                'Shopping',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Buy some grocery',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Text(
                '-\$120',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFD3C4A),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffEEE5FF),
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Frame 2.png'),
                  ),
                ),
              ),
              title: const Text(
                'Subscription',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Disney+ Annual..',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              trailing: const Text(
                '-\$80',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFD3C4A),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFDD5D7),
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Frame 3.png'),
                  ),
                ),
              ),
              title: const Text(
                'Food',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Buy a ramen',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              trailing: const Text(
                '-\$32',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFD3C4A),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: const [
                      Text(
                        'Yesterday',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffBDDCFF),
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Frame 4.png'),
                  ),
                ),
              ),
              title: const Text(
                'Transportation',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Charging Tesla',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              trailing: const Text(
                '-\$18',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFD3C4A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
