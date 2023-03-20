import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/MobileNo/mobile_no.dart';
import 'package:dev_login/Screens/MobileNo1/mobile_no1.dart';
import 'package:dev_login/Screens/MobileScreen/Components/background.dart';
import 'package:dev_login/Screens/MobileScreen1/mobile_screen1.dart';
import 'package:dev_login/Screens/WebScreen1/web_screen1.dart';
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             Text(
              "Have You Written",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900],
              ),
              ),
              const SizedBox(height: 12),
              Padding(
                 padding: const EdgeInsets.all(10),
                 child: Text(
              "Code Before ? ",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
              ),
              ),
               ),
               SizedBox(height: size.height * 0.05,),
                RoundedButton(
            text:"Yes",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const MobileSceen1();
                  },
                ),
              );
           }, onPressed: () {}, child: null,  
         ),
            RoundedButton(
            text:"No",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const MobileNo();
                },
                ),
                );
                }, onPressed: () {}, 
                child: null,
            ),
            SizedBox(height: size.height * 0.05,),
            Image.asset("assets/images/Frame 19.png",
            height: size.height * 0.35,
            )

            
          ],) ) ,

    );
  }
}