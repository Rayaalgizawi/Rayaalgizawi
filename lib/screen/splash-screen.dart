


import 'Sign In.dart';
import '../fixed/fixed .dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signin_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: getBody(),
      ),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          //
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/BOA Logo.png"),
            Column(children: [
                FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.white.withOpacity(0.5),
                onPressed: () {
                      Navigator.push(
            context,
                    MaterialPageRoute(
                      builder: (context) => Splashscren(),
                    ),
                  );
            
                },
               child: Container(
                  width: double.infinity,
                  height: 45,
                  child: Center(
                    child: Text(
                 "Sign in with your account",
                      style: contentBlue,
                    ),
                  ),
                ),
              ),
           const   SizedBox(height: 15),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0XFF0A496A).withOpacity(0.5),
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  height: 45,
                  child: Center(
                    child: Text(
                      "Open an Account",
                      style: contentWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ]),
          ],
        ),
      ),
    );
  }
}

