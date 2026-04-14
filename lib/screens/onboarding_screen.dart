import 'package:coffe_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Image.asset("assets/images/Onboarding.png",
              fit: BoxFit.cover,),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(" Fall In Love With\n Coffee In Blissful\n        Delight!",style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                Text("Welcom To Our Cozy Coffee Corner.Where\n          Every Cup Is Delightful for you",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                   backgroundColor: const Color.fromARGB(255, 96, 54, 9),
                   minimumSize:const Size(330, 60)
                   ),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                 child: Text("Get Started",style: TextStyle(
                  color: const Color.fromARGB(255, 224, 220, 220),
                  fontSize: 20,
                  
                 ),)
                 )
              ],
            ),
          )
        ],
      ),
    );
  }
}