import 'package:dev_login/Screens/Guiding/components/background.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Text("Tracks" , 
            style: TextStyle(
              color: Color(0xff573353),
              fontSize: 30,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold
            ),
            ) 
          ],
        ),
      )
      );
  }
}