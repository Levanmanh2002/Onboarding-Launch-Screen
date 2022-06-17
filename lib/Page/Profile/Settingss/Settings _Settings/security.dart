// ignore_for_file: non_constant_identifier_names

import 'package:app/Page/Profile/Settingss/Settings%20_Settings/ContactModel.dart';
import 'package:flutter/material.dart';

class SettingsSecurity extends StatefulWidget {
  const SettingsSecurity({Key? key}) : super(key: key);

  @override
  State<SettingsSecurity> createState() => _SettingsSecurityState();
}

class _SettingsSecurityState extends State<SettingsSecurity> {
  List<ContactModel> contacts = [
    ContactModel("PIN", true),
    ContactModel("Fingerprint", false),
    ContactModel("Face ID", false),
  ];
  List<ContactModel> selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Security",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactItem(
                    contacts[index].name,
                    contacts[index].isSelected,
                    index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ContactItem(String name, bool isSelected, int index) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      trailing: isSelected
          ? const Icon(
              Icons.check_circle,
              color: Color(0xff5233FF),
            )
          : const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
      onTap: () {
        setState(
          () {
            contacts[index].isSelected = !contacts[index].isSelected;
            if (contacts[index].isSelected == true) {
              selectedContacts.add(ContactModel(name, true));
            } else if (contacts[index].isSelected == false) {
              selectedContacts.removeWhere(
                  (element) => element.name == contacts[index].name);
            }
          },
        );
      },
    );
  }
}
