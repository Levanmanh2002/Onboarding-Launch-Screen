import 'package:flutter/material.dart';

class SettingsLanguage extends StatefulWidget {
  const SettingsLanguage({Key? key}) : super(key: key);

  @override
  State<SettingsLanguage> createState() => _SettingsLanguageState();
}

class _SettingsLanguageState extends State<SettingsLanguage> {
  bool isSelected = true;
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
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'English (EN)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Indonesian (ID)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Arabic (AR)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Chinese (ZH)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Dutch (NL)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'French (FR)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'German (DE)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Italian (IT)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Korean (KO)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Portuguese (PT)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Russian (RU)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  title: const Text(
                    'Spanish (ES)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0D0E0F),
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
                        isSelected = !isSelected;
                      },
                    );
                  },
                ),
              ),
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
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: Text(
          "Language",
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
