import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/MobileScreen/mobile_screen.dart';
import 'package:dev_login/Screens/Questionaire/Components/background.dart';
import 'package:dev_login/Screens/WebsiteScreen/website_screen.dart';
// ignore: unused_import
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

    return  Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>  [
            const Text(
              "WHAT DO YOU WANT",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff573353),
              ),
              ),
               const Padding(
                 padding: EdgeInsets.all(10),
                 child: Text(
              "TO CREATE ? ",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff573353),
              ),
              ),
               ),
               SizedBox(height: size.height * 0.05,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             RoundedButton(
                text:"Website",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const WebsiteScreen();
                }));
                }, onPressed: () {  }, child: null,
             ),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const Text("Understood" , 
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff573353),
                        ),))
                      ],
                      titlePadding: const EdgeInsets.only(top: 20 , left: 20),
                      contentPadding: const EdgeInsets.all(20),
                      title: const Text("Website",
                      style: TextStyle(
                          fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff573353),
                      ),),
                      content: const Text("The field of web development is the field that makes you able to design pages and deal with data and is divided into 3 sections ( Front-End, Back-End, Full-Stack )."),
                    );
                  });
                }, icon: const Icon(Icons.question_mark_rounded , 
                size: 50,))
             
           ],
         ),
         SizedBox(height: size.height * 0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                text:"Mobile Application",
                press: (){
                  Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const MobileApplicationScreen();
                }));
                }, onPressed: () {},
                child: null,
              ),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: const Text("Understood" , 
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff573353),
                        ),))
                      ],
                      titlePadding: const EdgeInsets.only(top: 20 , left: 20),
                      contentPadding: const EdgeInsets.all(20),
                      title: const Text("Mobile Application",
                      style: TextStyle(
                          fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff573353),
                      ),),
                      content: const Text("field of mobile development It makes you able to create applications used on the phone, and it is divided into two platforms ( Android and iOS )"),
                    );
                  });
                }, icon: const Icon(Icons.question_mark_rounded , 
                size: 50,))
             ],
            ),
            SizedBox(height: size.height * 0.05,),
            SvgPicture.asset("assets/icons/onboarding_image_4.png.svg")
          ],
        ) ,)
      );
  }
}