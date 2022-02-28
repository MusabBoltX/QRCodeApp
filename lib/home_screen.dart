import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_access_controle_admin/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'Widget/status_card.dart';
import 'new_user.dart';
import 'user_detail.dart';
import 'user_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SharedPreferences? sharedPreferences;

  Object? pName;
  Object? pEmail;
  Object? pNum;

  @override
  void initState() {
    _loadPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "QR Code Access Control System",
          ),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.black87,
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Image.asset(
                "assets/images/qr2.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: SizedBox(
                  // height: 30.h,
                  // color: Colors.cyanAccent,
                  width: 95.w,
                  child: Table(
                    // border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NewUser(),
                                ),
                              );
                            },
                            child: const StatusCard(
                              status: "Create User",
                              img: "assets/images/1.png",
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const UserList(),
                                  ));
                            },
                            child: const StatusCard(
                              status: "User List",
                              img: "assets/images/2.png",
                            )),
                      ]),
                      TableRow(children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UserDetail(
                                            phone: "03372888282",
                                            email: "test@gmail.com",
                                            fullName: "Test User",
                                          )));
                            },
                            child: const StatusCard(
                              status: "Profile",
                              img: "assets/images/3.png",
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const SplashScreen()));
                            },
                            child: const StatusCard(
                              status: "Log Out",
                              img: "assets/images/4.png",
                            )),
                      ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _loadPrefs() async {
    pName = sharedPreferences!.get("name");
    pEmail = sharedPreferences!.get("email");
    pNum = sharedPreferences!.get("number");
  }
}
