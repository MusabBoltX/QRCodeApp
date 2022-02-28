import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserDetail extends StatefulWidget {
  final String? fullName, email, phone;

  const UserDetail({
    Key? key,
    required this.fullName,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Material(
        child: Container(
          color: Colors.black87,
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 10.h,
                width: 20.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff505050)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset("assets/images/person.jpg")),
              ),
              Text(
                "${widget.fullName}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    height: 2),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_outline_rounded,
                      color: const Color(0xfff4b41a),
                      size: 20.sp,
                    ),
                    title: Text(
                      "${widget.fullName}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: const Color(0xfff4b41a),
                      size: 20.sp,
                    ),
                    title: Text(
                      "${widget.email}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: const Color(0xfff4b41a),
                      size: 20.sp,
                    ),
                    title: Text(
                      "${widget.phone}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.password_outlined,
                      color: const Color(0xfff4b41a),
                      size: 20.sp,
                    ),
                    title: Text(
                      "**********",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 3.h,
                ),
                width: 90.w,
                child: Text(
                  "UID QR Code",
                  style: TextStyle(
                      color: const Color(0xfff4b41a),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                height: 24.h,
                decoration: BoxDecoration(
                    color: const Color(0xff505050),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: SizedBox(
                    // height: 2.h,
                    width: 50.w,
                    // color: Colors.cyanAccent,
                    child: Image.asset(
                      "assets/images/qr.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
