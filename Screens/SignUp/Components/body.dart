// ignore: unused_import
import 'package:dev_login/Components/already_have_an_account_acheck.dart';
import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Components/rounded_input_filed.dart';
import 'package:dev_login/Components/rounded_password_field.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:dev_login/Screens/SignUp/Components/background.dart';
import 'package:dev_login/Screens/SignUp/Components/or_driver.dart';
// ignore: unused_import
import 'package:dev_login/Screens/SignUp/Components/social_icon.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {

   const Body({
    Key? key,
  }) : super(key: key);



    @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: sized_box_for_whitespace
    return Background(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           const Text(
            "Create Your Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color(0xff573353),
              fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/images/Create Your Account 2 (1).png",
          height: size.height * 0.25,
          ),
            RoundedInputField(
              hintText: "First Name",
              icon: Icons.person,
              onChanged: (value){}, obscureText: false,
              ),
              RoundedInputField(
              hintText: "Last Name",
              icon: Icons.person,
              onChanged: (value){}, obscureText: false,


              ),
              SizedBox(height: size.height * 0.01,),
              RoundedInputField(
              hintText: "Email",
              icon: Icons.email,
              onChanged: (value){}, obscureText: false,
              ),
              RoundedPasswordFiled(
                
              onChanged: (value){}, 
              ),
              RoundedButton(
              text: "Register",
              press: () {
                showDialog(
                  context: context, builder: (context) {
                  return  AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                        },
                        ),
                        );
                        // ignore: avoid_print
                          print('ok');
                          },
                          child:const Text('Ok',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff573353),

                          ),),
                          ),
                    ],
                    backgroundColor:KPrimaryLightColor,
                    title: const Text(
                      'Title',
                      ),
                      titleTextStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff573353),
                      ),
                    content: const Text('Successfully registered'),
                    contentTextStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff573353),
                    ),
                    
                  );

                }
                );
                }, onPressed: () {}, child: null,
              ),
              SizedBox(height: size.height * 0.01,),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                        },
                        ),
                        );
                        },
                ),
                OrDriver(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/iconmonstr-github-1 (1).svg",
                    height: 90,
                    width: 80,
                    ), 
                    onPressed: () { },
                  ),
                  SizedBox(width: size.width * 0.1,),
                   IconButton(
                    icon: SvgPicture.asset("assets/icons/icons8-gmail-logo.svg",
                    height: 80,
                    width: 80,
                    ), 
                    onPressed: () { },
                   )
                   
                
                ],)
            ],
            ),
        ),
      ),
    );
  }
}

