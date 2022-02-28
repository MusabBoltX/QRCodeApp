import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code_access_controle_admin/home_screen.dart';
import 'package:sizer/sizer.dart';

import 'Widget/consts.dart';
import 'log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const Text(
                "Signup",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Color(0xfff4b41a),
                  // color: isSignupScreen?Colors.blue:Colors.orange,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 0.sp, bottom: 5, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Name';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: name,
                          decoration: InputDecoration(
                            // fillColor: Color(0xfff4b41a),
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Enter First Name",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xfff4b41a),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 0.sp, bottom: 5, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Name';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: lName,
                          decoration: InputDecoration(
                            // fillColor: Color(0xfff4b41a),
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Enter Last Name",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xfff4b41a),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 0.sp, bottom: 5, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            // fillColor: Color(0xfff4b41a),
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Enter Email",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.email_rounded,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xfff4b41a),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 0.sp, bottom: 5, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Phone Number';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: phone,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            // fillColor: Color(0xfff4b41a),
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Enter Phone Number",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.email_rounded,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  color: Color(0xfff4b41a),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 2.sp, bottom: 0, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Password';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          controller: password,
                          obscureText: true,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Chose Password",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.password_outlined,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xfff4b41a)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 2.sp, bottom: 0, left: 25, right: 25),
                      // color: Colors.red,
                      // height: 70,
                      width: 400,
                      child: Center(
                        child: TextFormField(
                          validator: (value) {
                            if (value != password.text) {
                              return 'Password not matched';
                            }
                            return null;
                          },
                          controller: cPassword,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          // controller: pTC,
                          obscureText: true,
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.all(10),
                            hintText: "Confirm Password",
                            hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color(0xfff4b41a),
                                fontWeight: FontWeight.w600),
                            prefixIcon: const Icon(
                              Icons.password_outlined,
                              color: Color(0xfff4b41a),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xfff4b41a)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    // color: Color(0xfff4b41a),
                                    )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _signUp(name.text, lName.text, email.text, password.text, cPassword.text, phone.text);
                  }
                },
                child: Container(
                  height: 6.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: const Color(0xfff4b41a),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(
                      top: 15.sp, bottom: 20, left: 25, right: 25),
                  child: const Center(
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Do you have an account? ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: const Text(
                          " Login",
                          style: TextStyle(
                              color: Color(0xfff4b41a),
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _signUp(firstName, lastName, email, password, passwordConfirmation, phone) async {
    try {
      final response = await http.post(
        Uri.http(BASE_URL, "/backends/public/api/create"),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
        },
        body: jsonEncode(<String, String>{
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "password": password,
          "c_password": passwordConfirmation,
          "number": phone,
        }),
      );
      debugPrint(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var registerResponse = json.decode(response.body);
        debugPrint("$registerResponse");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.body)));
      }
    } catch (e) {
      debugPrint("$e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }
}
