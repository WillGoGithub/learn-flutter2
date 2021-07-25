import 'package:flutter/material.dart';
import 'package:flutter2_learn/Screens/Welcome/components/background.dart';
import 'package:flutter2_learn/components/roundedButton.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to OOO",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(
            text: "Login",
            textColor: Colors.white,
            btnColor: Colors.blue.shade400,
            icon: Icons.login_rounded,
          ),
          RoundedButton(
            text: "Registry",
            textColor: Colors.black,
            btnColor: Colors.blue.shade100,
            icon: Icons.add_circle_outline,
          )
        ],
      ),
    ));
  }
}
