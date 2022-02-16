


import 'package:bank/fixed/fixed%20.dart';
import 'package:bank/screen/splash-screen.dart';
import 'package:flutter/material.dart';

class Splashscren extends StatefulWidget {
  const Splashscren({Key? key}) : super(key: key);

  @override
  State<Splashscren> createState() => _Splashscren() ;
}

class _Splashscren extends State<Splashscren> {
  TextEditingController passwordController = TextEditingController();
  bool _rememberMe = true;
  bool _fingerprint = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getBodySingup(),
      ),
    );
  }

  Widget getBodySingup() {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bulr_background.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logosmall.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 122,
            child: Container(
              padding: EdgeInsets.only(
                top: 6,
                left: 20,
                right: 20,
              ),
              height: 270,
              width: MediaQuery.of(context).size.width - 30,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in", style: appTitle),
                      Icon(Icons.close,
                          color: const Color(0xFF000000), size: 25.0)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("PRO ID", style: appTitle2),
                      TextField(
                        style: appTitle1,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: "Enter your bank ID",
                          labelStyle: appTitle3,
                          label: Text("PRO ID"),
                        ),
                      ),
                      // Text("PASSWORD", style: appTitle2),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        style: appTitle1,
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelStyle: appTitle3,
                          label: Text("PASSWORD"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: textgrey1),
                          child: Checkbox(
                            value: _rememberMe,
                            checkColor: primary,
                            activeColor: textgrey1,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = !_rememberMe;
                              });
                            },
                          ),
                        ),
                        Text("Remember my ID for future logins.",
                            style: appTitle1),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(unselectedWidgetColor: textgrey1),
                          child: Checkbox(
                            value: _fingerprint,
                            checkColor: primary,
                            activeColor: textgrey1,
                            onChanged: (value) {
                              setState(() {
                                _fingerprint = !_fingerprint;
                              });
                            },
                          ),
                        ),
                        Text("Use fingerprint recognition next time.",
                            style: appTitle1),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: primary,
                      child: Text("Sign in", style: contentWhite),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
