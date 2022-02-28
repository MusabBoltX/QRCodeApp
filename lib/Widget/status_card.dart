import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';


class StatusCard extends StatelessWidget {
 final  String status;
 final String img;

  const StatusCard({Key? key,required this.status, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.all(2.w),
       height: 25.h,
       // width: 0.w,
       decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
          margin: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
          height: 12.h,
          // width: 10.w,
          // color: Colors.yellow,
          child: Image.asset(img, fit: BoxFit.cover,),
         ),
          SizedBox(height: 2.h,),
          Container(
            child: Text(status, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16.sp,),),
          )
        ],
       )
       // ListTile(
       //  contentPadding: EdgeInsets.only(left: 10.sp, right: 7.sp, top: 5.h),
       //  title: Text(status, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16.sp,),),
       //  // subtitle: Text("${goal} Goals", style: TextStyle(color: Colors.white, fontSize: 12.sp,  height: 2),),
       //  // trailing: Icon(Icons.arrow_forward, color: Colors.white,),
       // ),
      );
  }
}
