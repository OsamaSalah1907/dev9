import 'package:dev_login/Users_Courses_Mob/tracks_option.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int optionSelected = 0;
  void checkOption (int index) {
    setState(() {
      optionSelected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF2E9),
        title:const Text("Recommended Coursrs",
          style: TextStyle(
            color: Color(0xff573353),
            fontFamily: 'Poppins',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.notifications,
                color: Color(0xff573353),
                ),
              ),
          ],
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff573353),
              size: 29,
            ),
          ),
        ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        children: <Widget> [
          for(var i = 0;  i < courses.length; i++)
          CoursesMoboption(
            courses[i]['course'] as String,
            img: courses[i]['img'] as String,
            onTap: ()=> checkOption(i + 1),
            selectd: i + 1 == optionSelected,
            
          ),
          const Center(
            child: Text("Only the selected courses will be add to the track.",
              style: TextStyle(
                color: Color(0xff573353),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: (){},
                child: const Text("Add Track",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward,
              size: 35,
              color: Colors.orangeAccent,),
            ],
          ),        
        ],
      ),
      );
  }
}
class CoursesMoboption extends StatelessWidget {
  const CoursesMoboption(
      this.title, {
      Key?key, 
      this.color, 
      this.onTap, 
      this.selectd, 
      this.img,
      }
      ):super(key:key);


  final String? title;
  final String? img;
  final Color? color;
  final VoidCallback? onTap;
  final bool? selectd;

  @override
  Widget build(BuildContext context) {
    return Ink.image(
      fit: BoxFit.cover,
      image: AssetImage(img!),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: <Widget> [
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds:300 ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: selectd ?? false ? 5 : 0,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget> [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: selectd ?? false
                        ? Colors.orange.withOpacity(1)
                        : Colors.black45,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        title ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                      )
                  ],),
              ),
            )
          ],
        ),
      ), 
      );
  }
}