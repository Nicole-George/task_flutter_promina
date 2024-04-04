// import 'package:flutter/material.dart';
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginPage> {
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Image(image: AssetImage('assets/images/images.jpg'),),
//               Center(
//                 child: Text(
//                   'My ',
//                   style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Color(0xff555555)),
//                 ),
//               ),
//
//               Text(
//                 ' Gallery',
//                 style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color(0xFF555555),
//                 ),
//               ),
//
//               SizedBox(height: 25.0),
//               Container(
//                 width: 400,
//                 height: 400,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.blue),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(height: 40.0),
//                     Text(
//                       'LOG IN ',
//                       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xff555555)),
//                     ),
//                     SizedBox(height: 30.0),
//                     TextField(
//                       controller: _usernameController,
//                       decoration: InputDecoration(
//                         hintText: 'User Name',
//                         hintStyle: TextStyle(color: Colors.black54,fontSize: 20),
//                         filled: true,
//                         fillColor: Colors.grey[100],
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 30.0),
//                     Padding(
//                       padding: const EdgeInsets.all(.0),
//                       child: TextField(
//                         controller: _usernameController,
//                         decoration: InputDecoration(
//                           hintText: 'Password',
//                           hintStyle: TextStyle(color: Colors.black54,fontSize: 20),
//                           filled: true,
//                           fillColor: Colors.grey[100],
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(40),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Container(
//                       width: 350,
//                       height:50,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Handle login button press
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.blue.shade300, // background color
//                           onPrimary: Colors.white, // text color
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
//                         ),
//                         child: Text('SUBMIT',
//                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_flutter_promina/gallery.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image(
            image: AssetImage('assets/images/images.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Form container
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100), // Adjust as needed
                Center(
                  child: Text(
                    'My ',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555)),
                  ),
                ),
                Text(
                  ' Gallery',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF555555)),
                ),
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),

                    color: Colors.white
                        .withOpacity(0.8), // Add opacity to the container
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red.withOpacity(0.2),
                                  spreadRadius: 30,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'LOG IN ',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff555555)),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow.withOpacity(0.2),
                                  spreadRadius: 30,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.0),
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          hintText: 'User Name',
                          hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 20),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle:
                                TextStyle(color: Colors.black54, fontSize: 20),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        width: 350,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GalleryPage(
                                        name: _usernameController.text)));

                            // Handle login button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.shade300,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8.0),
                          ),
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
