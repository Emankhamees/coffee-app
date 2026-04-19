import 'package:flutter/material.dart';

class SizedWidget extends StatelessWidget {
  const SizedWidget({super.key,  });
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 252, 252),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                 color: const Color.fromARGB(255, 223, 222, 222),
                 width: 1,
    ),
                ),
                child:const  Center(
                  child: Text("S",
                  style: TextStyle(
                    fontSize: 18
                  ),),
                ),
              ),
    );
  }
}