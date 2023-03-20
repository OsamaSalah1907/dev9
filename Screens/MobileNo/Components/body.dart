import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/Guiding/components/background.dart';
import 'package:dev_login/Screens/MobileNo1/mobile_no1.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child:  Column(
          children: <Widget> [
            const Text("What's Your Age ? ",
          style: TextStyle(
            fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff573353),
          ),
          ),
          const SizedBox(height: 20),
               Center(
                 child: RoundedButton(
                  text:" 13 - 18",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const MobileNo1 ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:" 19 - 25 ",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const MobileNo1 ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
              ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:" more than 25",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const MobileNo1();
                  }));
                  }, onPressed: () {}, child: null,
             ),     
        ),
        Image.asset("assets/images/onboarding_image_2.png",
        height: size.height * 0.35,
        )
        ],
        ),
      ),
    );
  }
}