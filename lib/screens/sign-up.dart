import 'package:flutter/material.dart';
import 'package:medipal/screens/login-page.dart';

import '../custom/clipPath.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {

  final _signUpForm = GlobalKey<FormState>();
  String fname = "";
  String lname = "";
  String username = "";
  String email = "";
  String phone = "";
  String password = "";
  String password2 = "";
  bool isObscured = true;
  IconData openEyes = Icons.remove_red_eye_sharp;
  IconData closedEyes = Icons.remove_red_eye_outlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ClipPath(
                  //   clipper: CustomClipperShape(),
                  //   child: Container(
                  //     height: 450,
                  //     width: double.infinity,
                  //     color: Colors.red
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Sign Up", style: TextStyle(color: Colors.brown, fontSize: 24.0, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      const Text(
                                        "First Name",
                                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                                      ),
                                      TextFormField(
                                        scrollPadding: const EdgeInsets.all(20.0),
                                        style: const TextStyle(fontSize: 14.0),
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(maxHeight: 40.0, maxWidth: double.maxFinite),
                                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                                          hintText: "First Name",
                                          focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                          enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                        ),
                                      ),

                                    ],
                                  )
                                ),
                                SizedBox.fromSize(size: const Size.square(15.0)),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      const Text(
                                        "Last Name",
                                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                                      ),
                                      TextFormField(
                                        scrollPadding: const EdgeInsets.all(20.0),
                                        style: const TextStyle(fontSize: 14.0),
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(maxHeight: 40.0, maxWidth: double.maxFinite),
                                          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                                          hintText: "Lasts Name",
                                          focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                          enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                        ),
                                      ),

                                    ],
                                  )
                                ),

                              ],
                            ),
                          SizedBox.fromSize(size: const Size.square(15.0)),
                          const Text(
                            "Username",
                            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                          ),
                          TextFormField(
                            scrollPadding: const EdgeInsets.all(20.0),
                            style: const TextStyle(fontSize: 14.0),
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              constraints: BoxConstraints(maxHeight: 40.0),
                              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                              hintText: "Username",
                              focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),

                          SizedBox.fromSize(size: const Size.square(15.0)),
                          const Text(
                            "Email",
                            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                          ),
                          TextFormField(
                            scrollPadding: const EdgeInsets.all(20.0),
                            style: const TextStyle(fontSize: 14.0),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              constraints: BoxConstraints(maxHeight: 40.0),
                              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                              hintText: "Email",
                              focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                          SizedBox.fromSize(size: const Size.square(15.0)),
                          const Text(
                            "Phone",
                            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                          ),
                          TextFormField(
                            scrollPadding: const EdgeInsets.all(20.0),
                            style: const TextStyle(fontSize: 14.0),
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              constraints: BoxConstraints(maxHeight: 40.0),
                              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                              hintText: "Phone (876-555-5555)",
                              focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                          SizedBox.fromSize(size: const Size.square(15.0)),
                          const Text(
                            "Password",
                            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                          ),
                          TextFormField(
                            obscureText: isObscured,
                            style: const TextStyle(fontSize: 14.0),
                            decoration: InputDecoration(
                                constraints: BoxConstraints(maxHeight: 40.0),
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                                hintText: "Password",
                                focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isObscured = !isObscured;
                                    });
                                  },
                                  icon: Icon((isObscured) ? closedEyes: openEyes, color:Colors.grey, ),

                                )
                            ),
                          ),
                          SizedBox.fromSize(size: const Size.square(15.0)),
                          const Text(
                            "Confirm Password",
                            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.brown),
                          ),
                          TextFormField(
                            obscureText: isObscured,
                            style: const TextStyle(fontSize: 14.0),
                            decoration: InputDecoration(
                                constraints: BoxConstraints(maxHeight: 40.0),
                                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                                hintText: "Confirm Password",
                                focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.brown, width: 2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                enabledBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey, width: 1), borderRadius: BorderRadius.all(Radius.circular(10.0))),

                            ),
                          ),
                          SizedBox.fromSize(size: const Size.square(20.0)),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                alignment: Alignment.center,
                                minimumSize: const Size.fromHeight(45.0),
                                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                                backgroundColor: Colors.amber,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10.0),
                                    right: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
                              )

                          ),
                          SizedBox.fromSize(size: const Size.square(5.0)),

                          Row(
                              children:[
                                const Text(
                                  "Already have an account? ",
                                  style:  TextStyle(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.w600, letterSpacing: .6),
                                ),
                                TextButton(

                                    onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> LoginPage()));
                                    },
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      minimumSize: Size.zero,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    ),
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(fontSize: 10.0, color: Colors.brown,fontWeight: FontWeight.w600,letterSpacing: .6),
                                    )
                                )
                              ]
                          ),
                        ],
                      ),
                      ),
                  )
                ]
          ),
            Container(
                margin: EdgeInsets.only(top: 20.0),
                width:double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(top: BorderSide(color: Colors.grey[200]!, width: .7)
                    )
                ),
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Created by Vaine Studios ⓒ All Rights Reserved",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color:Colors.grey),
                  textAlign: TextAlign.center,

                )
            )

          ]
        ),
      )
    );
  }
}
