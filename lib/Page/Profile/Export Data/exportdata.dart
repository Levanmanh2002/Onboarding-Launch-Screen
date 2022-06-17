import 'package:app/Page/Profile/Export%20Data/exportdata_2.dart';
import 'package:flutter/material.dart';

class ExportDataProfile extends StatefulWidget {
  const ExportDataProfile({Key? key}) : super(key: key);

  @override
  State<ExportDataProfile> createState() => _ExportDataProfileState();
}

class _ExportDataProfileState extends State<ExportDataProfile> {
  final items1 = [
    'All',
    'Last 30 days',
    'CSV',
    '4',
  ];
  final items2 = [
    'Last 30 days',
    'CSV',
    '4',
  ];
  final items3 = [
    'CSV',
    'All',
    'Last 30 days',
  ];
  String? value1;
  String? value2;
  String? value3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcen(),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Tab(
                      child: Text(
                        'What data do your want to export?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff0D0E0F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xffF1F1FA), width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value1,
                    iconSize: 40,
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    items: items1.map((String value1) {
                      return DropdownMenuItem<String>(
                        value: value1,
                        child: Text(value1),
                      );
                    }).toList(),
                    onChanged: (value1) => setState(() => this.value1 = value1),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Tab(
                      child: Text(
                        'When date range?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff0D0E0F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xffF1F1FA), width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value2,
                    iconSize: 40,
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    items: items2.map((String value2) {
                      return DropdownMenuItem<String>(
                        value: value2,
                        child: Text(value2),
                      );
                    }).toList(),
                    onChanged: (value2) => setState(() => this.value2 = value2),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Tab(
                      child: Text(
                        'What format do you want to export?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff0D0E0F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xffF1F1FA), width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value3,
                    iconSize: 40,
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    items: items3.map((String value3) {
                      return DropdownMenuItem<String>(
                        value: value3,
                        child: Text(value3),
                      );
                    }).toList(),
                    onChanged: (value3) => setState(() => this.value3 = value3),
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
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
                      builder: (context) => const exportdata_2(),
                    ),
                  );
                },
                child: const Text(
                  '+ Export',
                  style: TextStyle(fontSize: 22),
                ),
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
          "Export Data",
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
