
import 'package:bank/fixed/fixed%20.dart';
import 'package:bank/screen/splash-screen.dart';
import 'package:flutter/material.dart';
import 'Sign In.dart';
class fingerscan extends StatefulWidget {
  const fingerscan({ Key? key }) : super(key: key);

  @override
  State<fingerscan> createState() => _fingerscanState();
}
class _fingerscanState extends State<fingerscan> {
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      body: Container(  
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signin_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: NewWidget(),
        ),
    );
  }
}
class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainAxisAlignment;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/logo.png"),
            Column(
              children: [
             // ignore: deprecated_member_use
             RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.white.withOpacity(0.5),
                 onPressed: () {
                
                      Navigator.pop(
context,
                     MaterialPageRoute(
                       builder: (context) => const SignIn(),
                    ),
                  );
                },
             
                  ),
           
            ],
            ),
               
                        Image.asset("assets/images/Blue Button.png"),
            Column(children: [
            ]
            ),
          ],
        ),
           
      ),
     
    );
  }
}


