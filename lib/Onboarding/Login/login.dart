// ignore_for_file: non_constant_identifier_names, avoid_print, sized_box_for_whitespace, unused_field

import 'package:app/Onboarding/ForgotPassword/forgotpass.dart';
import 'package:app/Onboarding/SignUp/signup.dart';
import 'package:app/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isChecked = false;
  bool isHidden = true;
  RegExp pass_valid = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
  bool validatePassword(String pass) {
    String password = pass.trim();
    if (pass_valid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  // void validate() {
  //   if (formKey.currentState!.validate()) {
  //     formKey.currentState!.save();
  //     // Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (context) => const HomeApp(),
  //     //   ),
  //     // );
  //   } else {
  //     print("Xác nhận thất bại");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildcen(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formKey,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 178, 181, 181),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 12, 134, 233),
                        ),
                      ),
                    ),
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: 'Vui lòng nhập email'),
                        EmailValidator(errorText: 'Email không hợp lệ'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: isHidden,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: isHidden
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: passwordVisibility,
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: const [AutofillHints.password],
                    onEditingComplete: () => TextInput.finishAutofillContext(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng nhập Password";
                      } else {
                        bool result = validatePassword(value);
                        if (result) {
                          return null;
                        } else {
                          return "Password không hợp lệ";
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.maxFinite,
                    child: RawMaterialButton(
                      fillColor: const Color(0xff7F3DFF),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      onPressed: () async {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text);
                        if (credential.user != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeApp(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7F3DFF),
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (login) => const ForgotPassword(),
                        ),
                      );
                    },
                  ),
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 30, left: 50),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Color(0xff91919F),
                          fontWeight: FontWeight.normal,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: 'Don’t have an account yet? '),
                          TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              color: Color(0xff7F3DFF),
                              fontWeight: FontWeight.normal,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUp(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void passwordVisibility() => setState(() => isHidden = !isHidden);
}

// Future<User?> loginUsingEmailPassword({
//   required String email,
//   required String password,
//   required BuildContext context,
// }) async {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   User? user;
//   try {
//     UserCredential userCredential =
//         await auth.signInWithEmailAndPassword(email: email, password: password);
//     user = userCredential.user;
//   } on FirebaseAuthException catch (e) {
//     if (e.code == "password") {
//       print("The password is invalid or the user does not have a password.");
//     } else if (e.code == "email") {
//       print("The email address is invalid.");
//     } else if (e.code == "weak-password") {
//       print("The password is too weak.");
//     } else if (e.code == "user-disabled") {
//       print("The user account has been disabled by an administrator.");
//     } else if (e.code == "user-not-found") {
//       print(
//           "There is no user record corresponding to this identifier. The user may have been deleted.");
//     } else if (e.code == "invalid-email") {
//       print("The email address is malformed.");
//     } else if (e.code == "wrong-password") {
//       print("The password is invalid or the user does not have a password.");
//     } else {
//       print("Error code: ${e.code}");
//     }
//     return user;
//   }
//   return null;
// }
