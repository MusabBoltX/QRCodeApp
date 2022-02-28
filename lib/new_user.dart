import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NewUser extends StatefulWidget {
  const NewUser({Key? key}) : super(key: key);

  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  TextEditingController name = TextEditingController();
  TextEditingController l_name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.h,),
                Container(
                  height: 10.h,
                  width: 20.w,
                  // color: Colors.pink,
                  // margin: EdgeInsets.only(top: 45, right: 20.sp),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.sp),
                    child: Image.asset("assets/images/person.jpg", fit: BoxFit.fill,),
                  ),),
                SizedBox(height: 1.h,),
                Container(
                  height: 4.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Color(0xff505050),
                    onPressed: (){},
                    child: Text("Browes", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12.sp),),
                  ),
                ),
                SizedBox(height: 2.h,),
                Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 0.sp, bottom: 5, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w600),
                              controller: name,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                // fillColor: Color(0xfff4b41a),
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter First Name",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a), fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.person,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xfff4b41a),
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 0.sp, bottom: 5, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w600),
                              controller: l_name,
                              decoration: InputDecoration(
                                // fillColor: Color(0xfff4b41a),
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Last Name",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a), fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.person,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xfff4b41a),
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 0.sp, bottom: 5, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w600),
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                // fillColor: Color(0xfff4b41a),
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Email",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a), fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.email_rounded,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xfff4b41a),
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 0.sp, bottom: 5, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w600),
                              controller: phone,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                // fillColor: Color(0xfff4b41a),
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Enter Phone Number",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a), fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.phone,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Color(0xfff4b41a),
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 2.sp, bottom: 0, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),
                              controller: password,
                              obscureText: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Chose Password",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a),fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.password_outlined,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff4b41a)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      // color: Color(0xfff4b41a),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Container(
                          margin: EdgeInsets.only(top: 2.sp, bottom: 0, left: 25, right: 25),
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
                              style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),
                              // controller: pTC,
                              obscureText: true,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.all(10),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(fontSize: 15,color: Color(0xfff4b41a),fontWeight: FontWeight.w600),
                                prefixIcon: Icon(Icons.password_outlined,color: Color(0xfff4b41a),),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff4b41a)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
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
                ),
                GestureDetector(
                  onTap: (){
                    if (_formKey.currentState!.validate()) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
                    }
                  },
                  child: Container(
                    height: 6.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: Color(0xfff4b41a),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(top: 15.sp, bottom: 20, left: 25, right: 25),
                    child: Center(
                      child: Text("Creat", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
