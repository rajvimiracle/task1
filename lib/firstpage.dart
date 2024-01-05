import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task2/screens/second_screen.dart';

class firstScrren extends StatefulWidget {
  const firstScrren({super.key});

  @override
  State<firstScrren> createState() => _firstScrrenState();
}

class _firstScrrenState extends State<firstScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(padding: EdgeInsets.all(5.w),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Image(image: AssetImage('assets/images/background1.png',))
              Image.asset(
                'assets/images/background1.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(top: 60),
                          alignment: Alignment.topCenter,
                          height: 40.h,
                          width: 82.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // // SizedBox(
                              //   height: 3.h,
                              // ),
                              Center(
                                child: Text(
                                  "   Book your next"
                                      "\n"
                                      "appointment easily",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.sp,
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Center(
                                  child: Text(
                                    "Donec at nisi consectetur, eleifend libero vitae,"
                                        "\n"
                                        "vehicula nulla. Nam eu elit blandit, sodales nibh",
                                    style: TextStyle(fontSize: 15.sp),
                                  )),
                              Center(
                                  child: Text("quis, consequat eros.",
                                      style: TextStyle(fontSize:15.sp))),
                              SizedBox(
                                height: 5.h,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => secondScrren()),
                                  );
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),
                                ),
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(Size(100.w, 7.h)),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(margin: EdgeInsets.only(bottom: 35.h,),child: Image.asset('assets/images/logo.png',height: 110,width: 110,)),
                      ),
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
}
