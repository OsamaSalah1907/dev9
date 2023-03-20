import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/Guiding/components/background.dart';
import 'package:dev_login/Screens/Login/login_screen.dart';
import 'package:dev_login/Screens/OnBoarding/on_boarding_screen.dart';
import 'package:dev_login/Screens/Questionaire/questionaire_screen.dart';
import 'package:dev_login/Screens/Select_Tracks/select_Tracks.dart';
import 'package:dev_login/const.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return  Background(
        child: Stack(
          children: <Widget>[
            Background(child: Image.asset("assets/images/Background.png")),
             Padding(
               padding: const EdgeInsets.only(bottom: 400),
               child: Center(
                 child: RoundedButton(
            text:"Select Courses",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const SelectTracks();
                    },
                    ),
                    );
                    }, onPressed: () {}, 
                    child: null,
           
        ),
        
               ),
               
             ),
              Padding(
                padding: const EdgeInsets.only(bottom: 220),
                child: Center(
                  child: RoundedButton(
            text:"Guide Me",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const QuestionaireScreen();
                    },
                    ),
                    );
                    }, onPressed: () {}, 
                    child: null,
        ),
                ),
              )],
            )
        );
  }
}