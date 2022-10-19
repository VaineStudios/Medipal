import 'package:flutter/material.dart';
import 'package:medipal/screens/sign-up.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:true,
        body: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg-image.jpg"),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(Colors.green, BlendMode.hardLight)
                  ),
                ),
                child: Center(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0,0.4)
                      ),
                    )
                )
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 35.0,
                        child: const Image(image: AssetImage("assets/medipal-logo-original.png")),

                      ),
                    )
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          color: Colors.white,
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0,20.0, 0 ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Text(
                                "Login",
                                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.brown),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height:20.0),
                              LoginForm()
                            ],
                          )
                      ),
                      Container(
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
                    ],
                  )
                )
              ],
            )
          ],
        )
    );
  }
}



class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscured = true;
  IconData openEyes = Icons.remove_red_eye_sharp;
  IconData closedEyes = Icons.remove_red_eye_outlined;

  @override
  Widget build(BuildContext context) {
    return Form(

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children:[
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
            const SizedBox(height: 15.0),
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
            const SizedBox(height: 15.0),
            TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0.0),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                    "Forget Password ?",
                  style: TextStyle(fontSize: 12.0, color: Colors.brown),
                ),
            ),
            const SizedBox(height: 12.0),
            TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    alignment: Alignment.center,
                    minimumSize: const Size.fromHeight(45.0),
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    backgroundColor: Colors.amber,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20.0),
                            right: Radius.circular(20.0),
                        ),
                    ),
                  ),
                  child: const Text(
                      "Login",
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w700),
                  )

              ),
            const SizedBox(height: 10.0),
            Row(
              children:[
                const Text(
                  "Don't have an account? ",
                  style:  TextStyle(fontSize: 10.0, color: Colors.grey, fontWeight: FontWeight.w600, letterSpacing: .6),
                ),
                TextButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> SignupForm()));
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,

                  ),
                  child: const Text(
                      "Register",
                    style: TextStyle(fontSize: 10.0, color: Colors.brown,fontWeight: FontWeight.w600,letterSpacing: .6),
                  )
                )
              ]
            ),
            const SizedBox(height: 10.0),

          ],
        )
    );
  }
}



