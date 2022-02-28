import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'Widget/consts.dart';
import 'home_screen.dart';
import 'sign_up.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  SharedPreferences? sharedPreferences;

  String? fNamePref;
  String? emailPref;
  String? numberPref;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Color(0xfff4b41a),
                // color: isSignupScreen?Colors.blue:Colors.orange,
              ),
            ),
            const SizedBox(height: 30,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 5, left: 25, right: 25),
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
                        style: const TextStyle(fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                        controller: email,
                        decoration: InputDecoration(
                          // fillColor: Color(0xfff4b41a),
                          // contentPadding: EdgeInsets.all(10),
                          hintText: "Enter Email",
                          hintStyle: const TextStyle(fontSize: 15,
                              color: Color(0xfff4b41a),
                              fontWeight: FontWeight.w600),
                          prefixIcon: const Icon(Icons.email_rounded,
                            color: Color(0xfff4b41a),),
                          focusedBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color(0xfff4b41a),
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                // color: Color(0xfff4b41a),
                              )
                          ),

                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, bottom: 0, left: 25, right: 25),
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
                              style: const TextStyle(fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                              controller: password,
                              obscureText: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Password",
                                hintStyle: const TextStyle(fontSize: 15,
                                    color: Color(0xfff4b41a),
                                    fontWeight: FontWeight.w600),
                                prefixIcon: const Icon(Icons.password_outlined,
                                  color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xfff4b41a)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: (){
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) =>  forgot_password(),),
            //     // );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.only(left: 210,top: 6.sp,),
            //     child: Text("Forgot Password?", style: TextStyle(color: Color(0xfff4b41a),),),),
            // ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _logIn(email.text, password.text);
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
                  child: Text("Login", style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? ", style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),),
                        );
                      },
                      child: const Text(" Create new", style: TextStyle(
                          color: Color(0xfff4b41a),
                          fontWeight: FontWeight.w700),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Future _logIn(email, password) async {
    try {
      final response = await http.post(
        Uri.http(BASE_URL, "/backends/public/api/logins"),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
        },
        body: jsonEncode(<String, String>{
          "email": email,
          "password": password,
        }),

      );
      debugPrint(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseJson = json.decode(response.body);
        // setState(() {
        //   loginDataList = responseJson;
        // });

        debugPrint(" ==> ${responseJson['user']['email']}");


        setState(() {
          fNamePref = (responseJson['user']['first_name'] + " " + responseJson['user']['last_name']).toString();
          emailPref = responseJson['user']['email'];
          numberPref = responseJson['user']['number'];
        });

        debugPrint(fNamePref);
        debugPrint(emailPref);
        debugPrint(numberPref);
        _loadPrefs();
        Future.delayed(const Duration(seconds: 1),(){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        });

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(response.body)));
      }
    } catch (e) {
      debugPrint("$e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  Future _loadPrefs() async {
    debugPrint(fNamePref);
    debugPrint(emailPref);
    debugPrint(numberPref);

    sharedPreferences!.setString("name", fNamePref!);
    sharedPreferences!.setString("email", emailPref!);
    sharedPreferences!.setString("number", numberPref!);
  }
}
