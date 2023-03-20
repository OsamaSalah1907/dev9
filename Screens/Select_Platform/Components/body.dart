import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/Guiding/components/background.dart';
import 'package:dev_login/Users_Courses_Mob/user_courses_mob_screen.dart';
import 'package:dev_login/Users_Courses_Mob_Both/users_courses_mob_both.dart';
import 'package:dev_login/Users_Courses_Mob_Ios/users_courses_mob_ios.dart';
import 'package:dev_login/Users_Tracks/users_tracks_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
          Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> 
        [
          const Center(
            child: Text("Select Platform",
            style: TextStyle(
             fontFamily: "Poppins",
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Color(0xff573353),
            ),
      ),
          ),
      const SizedBox(height: 12,),
      Center(
                 child: RoundedButton(
                  text:"Android",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const UsersCoursesMobScreen ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"IOS",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const UsersCoursesMobIosScreen ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
              ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"Both",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const UsersCoursesMobBothScreen();
                  }));
                  }, onPressed: () {}, child: null,
             ),     
        ),
        const SizedBox(height: 12,),
      Center(
        child: Image.asset("assets/images/Projection 1.png",
         height: size.height * 0.30,),
      )
      ],
      ),
      ),
    );
  }
}