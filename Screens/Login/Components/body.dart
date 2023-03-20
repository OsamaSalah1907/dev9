// ignore: unnecessary_import
import 'package:dev_login/Components/already_have_an_account_acheck.dart';
import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Components/rounded_input_filed.dart';
import 'package:dev_login/Components/rounded_password_field.dart';
// ignore: unused_import
import 'package:dev_login/Components/text_field_container.dart';
import 'package:dev_login/Screens/Guiding/guide_me_screen.dart';
// ignore: unused_import
import 'package:dev_login/Screens/Login/Components/background.dart';
import 'package:dev_login/Screens/SignUp/signup_Screen.dart';
// ignore: unused_import
import 'package:dev_login/Screens/WebScreen2/web_screen%202.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {

  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;

   return Background(
    child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
       const Text(
        "LOGIN",
        style: TextStyle(
          fontSize: 25,
          color: Color(0xff573353),
          fontWeight: FontWeight.bold),
      ),
      SizedBox(height: size.height * 0.03,),
      SvgPicture.asset("assets/icons/PHP_Assignment_help.svg",
      height: size.height * 0.35,
      ),
      SizedBox(height: size.height * 0.03,),
      RoundedInputField(
        hintText: 
        "Enter Your Email",
        onChanged: (value){}, obscureText: false,
      ),
      RoundedPasswordFiled(
        onChanged: (value){},
        ),
      SizedBox(height: size.height * 0.03,),
         RoundedButton(
          text: "Login",
          press:  () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const GuideMeScreen();
                }
                )
                 );
          }, onPressed: () {}, child: null,
          ),
          SizedBox(height: size.height * 0.03,),
          AlreadyHaveAnAccountCheck(
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return SignUpScreen();
                }
                )
                 );
            },
          )   
      ],
      ),
    ),
    );
  }
}

