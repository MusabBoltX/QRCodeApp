import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';
import 'Widget/consts.dart';
import 'home_screen.dart';
import 'user_detail.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  List userListData = [];

  @override
  void initState() {
    _usersListAPI();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
        ),
        title: const Text("All User",),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.black87,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: userListData.length == null ? 0 : userListData.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.h,
               // color: Colors.yellow,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail(
                      fullName: userListData[index]["first_name"] + userListData[index]["last_name"],
                      email: userListData[index]["email"],
                      phone: userListData[index]["number"],
                    )));
                  },
                  child: ListTile(
                    leading: SizedBox(
                      height: 7.h,
                      width: 14.w,
                      // color: Colors.pink,
                      // margin: EdgeInsets.only(top: 45, right: 20.sp),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.sp),
                        child: Image.asset("assets/images/person.jpg", fit: BoxFit.fill,),
                      ),),
                    title: Text("${userListData[index]["first_name"]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13.sp),),
                    subtitle: Text("${userListData[index]["email"]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12.sp),),
                    trailing: const Icon(Icons.arrow_forward, color: Colors.white,),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }

  Future _usersListAPI() async {
    try {
      final response = await http.get(
        Uri.http(BASE_URL, "/backends/public/api/index1"),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'X-Requested-With': 'XMLHttpRequest',
        },
      );
      debugPrint(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseJson = json.decode(response.body);

        setState(() {
          userListData = responseJson;
        });
        debugPrint(userListData.toString());

      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.body)));
      }
    } on HttpException {
      debugPrint("Connection Error");
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Connection Error")));
    } on SocketException {
      debugPrint("Connection Failed");
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Connection Failed")));
    } on FormatException {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Invalid Input")));
      debugPrint("Invalid Input");
    } catch (e) {
      debugPrint("$e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

}
