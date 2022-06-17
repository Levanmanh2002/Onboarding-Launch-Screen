import 'package:app/Page/Profile/Account/Account%20_Account/accountdetail.dart';
import 'package:flutter/material.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  State<AccountProfile> createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcen(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              height: 162.9,
              width: 474.96,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/BG.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Account Balance",
                    style: TextStyle(
                      color: Color(0xff91919F),
                    ),
                  ),
                  Text(
                    "\$9400",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/wallet-3.png'),
                  ),
                ),
              ),
              title: const Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Text(
                '\$400',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Chase.png'),
                  ),
                ),
              ),
              title: const Text(
                'Chase',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Text(
                '\$1000',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Group.png'),
                  ),
                ),
              ),
              title: const Text(
                'Citi',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Text(
                '\$6000',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Bank.png'),
                  ),
                ),
              ),
              title: const Text(
                'Paypal',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Text(
                '\$2000',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff7F3DFF),
                onPrimary: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: const Size(343, 38),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountDetail(),
                  ),
                );
              },
              child: const Text('+ Add new wallet'),
            ),
          ],
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
          "Account",
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
