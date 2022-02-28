import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_access_controle_admin/log_in.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(milliseconds: 1000),(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));}
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.black87,
          child: Center(
           child: Padding(
             padding: EdgeInsets.only(top: 10.h, bottom: 2.h),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 // SizedBox(height: 1.h,),
                 Text("Wellcome", style: TextStyle(color: Colors.blue, fontSize: 20.sp, fontWeight: FontWeight.w600),),
                 Container(
                   height: 25.h,
                   width: 70.w,
                   // color: Colors.yellow,
                   child: Image.asset("assets/images/qr1.png", fit: BoxFit.fill,),
                 ),
                 Text("QR Code Access Control System", textAlign: TextAlign.center, style: TextStyle(color: Color(0xfff4b41a), fontSize: 22.sp, fontWeight: FontWeight.w800),),
                 Text("Admin", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w600),),
                 // SizedBox(height: 1.h,),
               ],
             ),
           ),
          ),
        ),
      ),
    );
  }
}
