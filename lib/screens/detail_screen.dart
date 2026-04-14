import 'package:coffe_app/widgets/sized_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String>sized=['S','M','L'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        automaticallyImplyLeading: false,
        title: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              const Icon(Icons.arrow_back_sharp,size: 30,),
              Text("Detail"),
              Image.asset("assets/images/Icon (1).png",width: 40,)
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(child: Image.asset("assets/images/Image.png")),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Caffee Mocha",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),),
          ),
          
          Row(
            
            children: [
              Text("   Ice/hot",style: TextStyle(
                color: Colors.grey[400],
              ),),
               Spacer(),
              Image.asset("assets/images/Fast Delivery.png"),
               SizedBox(width: 15,),
               Image.asset("assets/images/Quality Bean.png"),
                SizedBox(width: 15,),
                Image.asset("assets/images/Extra Milk.png"),
                 SizedBox(width: 15,),
      
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/images/Rating.png")),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 340,
            height: 1,
            color: const Color.fromARGB(255, 222, 219, 219),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Discribtion",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          Text("A cappuccino is an approximately 150 ml (5 oz) beverage\nwith 25 ml of espresso coffee and 85 ml of fresh milk.\nThe foam gives it a smooth and creamy texture.",
          style: TextStyle(
            color: const Color.fromARGB(255, 178, 176, 176)
          ),),
           Padding(
            padding: const EdgeInsets.only(right: 325.0),
            child: Text("Size",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
        Row(
       children: [
        SizedBox(
          width: 15,
        ),
         Container(
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
              child: Center(
                child: Text("S",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
             SizedBox(
          width: 15,
        ),
             Container(
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
              child: Center(
                child: Text("M",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
             SizedBox(
          width: 15,
        ),
             Container(
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
              child: Center(
                child: Text("L",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
       ],
      ),
      
        ],
      ),
     
    );
  }
}