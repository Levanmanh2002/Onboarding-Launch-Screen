// ignore_for_file: non_constant_identifier_names, avoid_print, sized_box_for_whitespace, unused_element, prefer_final_fields

import 'package:app/Onboarding/Account/account.dart';
import 'package:app/Onboarding/Login/login.dart';
import 'package:app/Onboarding/SignUp/firebase_services_google.dart';
import 'package:app/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var loading = false;
  @override
  void initState() {
    super.initState();
  }

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
  //     print("Xác nhận thành công");
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => const SignUpVerfication(),
  //       ),
  //     );
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
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Name',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Vui lòng nhập họ và tên';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: isHidden,
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            isChecked = !isChecked;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        width: 250,
                        margin: const EdgeInsets.only(top: 20),
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <TextSpan>[
                              const TextSpan(
                                  text: 'By signing up, you agree to the '),
                              TextSpan(
                                text: 'Terms of Service and Privacy Policy',
                                style: const TextStyle(
                                  color: Color(0xff7F3DFF),
                                  fontWeight: FontWeight.normal,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Account(),
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
                  const SizedBox(
                    height: 15,
                  ),
                  //  if (loading) ...[
                  //   const Center(
                  //     child: CircularProgressIndicator(),
                  //   )
                  // ],
                  // if (!loading) ...[
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
                            .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        if (credential.user != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  // ],
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Or with',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff91919F),
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80, top: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/google.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Sign Up with Google",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      await FirebaseServices().signInWithGoogle();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeApp(),
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
                          const TextSpan(text: 'Already have an account? '),
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              color: Color(0xff7F3DFF),
                              fontWeight: FontWeight.normal,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
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
  // Future _signUp() async {
  //   setState(
  //     () {
  //       loading = true;
  //     },
  //   );
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     );

  //     await FirebaseFirestore.instance.collection('users').add(
  //       {
  //         'email': _emailController.text,
  //         'name': _nameController.text,
  //         'password': _passwordController.text,
  //       },
  //     );

  //     await showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: const Text('Thành công'),
  //         content: const Text('Đăng ký thành công'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //     Navigator.of(context).pop();
  //   } on FirebaseAuthException catch (e) {
  //     _handleSignUpError(e);
  //     setState(() {
  //       loading = false;
  //     });
  //   }
  // }

  // void _handleSignUpError(FirebaseAuthException e) {
  //   String messageToDisplay;
  //   switch (e.code) {
  //     case 'email-already-in-use':
  //       messageToDisplay = 'Email đã được sử dụng';
  //       break;
  //     case 'invalid-email':
  //       messageToDisplay = 'Email không hợp lệ';
  //       break;
  //     case 'operation-not-allowed':
  //       messageToDisplay = 'Tài khoản không được phép';
  //       break;
  //     case 'weak-password':
  //       messageToDisplay = 'Mật khẩu không hợp lệ';
  //       break;
  //     default:
  //       messageToDisplay = 'Đăng ký thất bại';
  //       break;
  //   }
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: const Text('Thất bại'),
  //       content: Text(messageToDisplay),
  //       actions: [
  //         TextButton(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //           child: const Text('OK'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  AppBar buildcen() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: Text(
          "Sign Up",
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
