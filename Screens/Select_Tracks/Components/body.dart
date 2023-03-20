import 'package:dev_login/Components/rounded_button.dart';
import 'package:dev_login/Screens/Guiding/components/background.dart';
import 'package:dev_login/Screens/Select_Career/select_career.dart';
import 'package:dev_login/Screens/Select_Platform/select_platform.dart';
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
            child: Text("Which Track Do You",
            style: TextStyle(
             fontFamily: "Poppins",
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Color(0xff573353),
            ),
      ),
          ),
      const SizedBox(height: 12,),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text("Want ? ", 
          style: TextStyle(
            fontFamily: "Poppins",
               fontSize: 30,
               fontWeight: FontWeight.bold,
               color: Color(0xff573353),
          ),
          ),
        ),
      ),
      const SizedBox(height: 12,),
      Center(
                 child: RoundedButton(
                  text:"Web Development",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const SelectCareer ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"Mobile Application",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const SelectPlatform ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
              ),            
        const SizedBox(height: 12,),
      Center(
        child: Image.asset("assets/images/Web Hosting 2.png",
         height: size.height * 0.35,),
      )
      ],
      ),
      ),
    );
  }
}