import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class GlassMorphism extends StatefulWidget {
  const GlassMorphism({super.key});

  @override
  State<GlassMorphism> createState() => _GlassMorphismState();
}

class _GlassMorphismState extends State<GlassMorphism> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.purpleAccent.withOpacity(0.3),
                Colors.lightBlueAccent,
              ]
          ),
        ),
        child: Center(
          child: GlassContainer(
            height: 500,
            width: 300,
            color: Colors.white70.withOpacity(0.2),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image(image: AssetImage("assets/images/p1.jpg"),fit: BoxFit.cover,height: 70,width: 70,color: Colors.white.withOpacity(0.6),),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //         color: Colors.white,
                      //       ),
                      //   borderRadius: BorderRadius.circular(35),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //         color: Colors.white,
                      //       ),
                      //   borderRadius: BorderRadius.circular(35),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock_open_outlined,color: Colors.white,),
                      hintText: "Enter your Password",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text("Forget Password",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 35,),
                      Text("New User Register",style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                }, child: Text("LOG IN",style: TextStyle(fontSize: 15),),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(250, 7),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      /*body: Stack(
        children: [
          Image(image: AssetImage( "assets/images/n.jpg",),fit: BoxFit.cover,width: double.infinity,),
          Center(
            child: GlassContainer(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Text("Hello Word"),
                ],
              ),
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ],
      ),*/
    );
  }
}
// body: Container(
//   decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage("assets/images/n.jpg"),
//         fit: BoxFit.cover,
//       ),
//     ),
//   child: GlassContainer(
//     child: Column(
//       children: [
//         Text("Hello"),
//         Text("World"),
//       ],
//     ),
//     color: Colors.white.withOpacity(0.2),
//     width: 300,
//     height: 300,
//   ),
// ),
// body: Container(
//   decoration: BoxDecoration(
//     image: DecorationImage(
//       image: AssetImage("assets/images/n.jpg"),
//       fit: BoxFit.cover,
//     ),
//   ),
//   child: Center(
//     child: Container(
//       height: 300,
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//
//     ),
//   ),
// ),
