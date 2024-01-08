import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class secondScrren extends StatefulWidget {
  const secondScrren({super.key});

  @override
  State<secondScrren> createState() => _secondScrrenState();
}

class _secondScrrenState extends State<secondScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.w),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/background.png',
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
                              Center(
                                child: Text(
                                  "Find trusted businesses"
                                      "\n"
                                      "           in your area",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
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
                                  child: Text("quis, consequat erosulvinar.",
                                      style: TextStyle(fontSize: 15.sp))),
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
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(100.w, 7.h)),
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
                        child: Container(
                            margin: EdgeInsets.only(
                              bottom: 35.h,
                            ),
                            child: Image.asset(
                              'assets/images/logo.png',
                              height: 110,
                              width: 110,
                            )),
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
