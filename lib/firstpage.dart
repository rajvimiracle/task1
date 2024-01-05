import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/h2.png',width: double.infinity,
            ),
            Positioned(child: Padding(
              padding: const EdgeInsets.all(5.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                alignment: Alignment.bottomCenter,
                height: 20.h,
                width: 80.w,
                child: Column(
                  children: [
                    Text("Book Your Next",),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),

    );
  }
}
