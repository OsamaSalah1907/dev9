import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/HomePage/home_page.dart';
import 'package:dev_login/Screens/WebScreen4/Components/background.dart';
import 'package:dev_login/Users_Tracks/users_tracks_screen.dart';
import 'package:dev_login/Users_Tracks_Web_Both/user_tracks_web_both.dart';
import 'package:dev_login/Users_Tracks_web_backend/users_tracks_web_backend.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            const Text("What Would YouLike ",
            style: TextStyle(
              fontFamily: "Poppins",
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Color(0xff573353),
            ),
            ),
            const SizedBox(height: 12,),
             const Padding(
               padding: EdgeInsets.all(10),
               child: Text("To Do In Website  ? ",
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
                  text:"Design",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const UsersTracksScreen ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"Logic",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const UsersTracksWebBackendScreen ();
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
                    return const UsersTracksWebBothScreen();
                  }));
                  }, onPressed: () {}, child: null,
             ),     
        ),
        const SizedBox(height: 12,),
        Image.asset("assets/images/E-Book 1.png",
        height: size.height * 0.35,
        )
        ],
        ),
      ),
    );
  }
}