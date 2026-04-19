import 'package:coffe_app/models/coffee_model.dart';
import 'package:coffe_app/screens/order_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final CoffeeModel coffee;
   
    const DetailScreen({super.key, required this.coffee});
  

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
   int selectedSize = 0; 
  List<String>sized=['S','M','L'];

  void showPriceSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: 120,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " ${widget.coffee.price}",
                style:  const TextStyle(
                  color:  Color.fromARGB(255, 148, 91, 70),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 70,
                width: 200,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color.fromARGB(255, 148, 91, 70),
                    padding: const EdgeInsets.symmetric(
                      
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => OrderScreen(
                    coffee: widget.coffee,
                    ),
                     ),
                      );
                  },
                  child: const Text("Buy Now",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              )
            ],
          ),
        );
      },
    );
  }
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
          
              GestureDetector(
                onTap: () {
               Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_sharp,size: 30,)),
             const  Text("Detail"),
              Image.asset("assets/images/Icon (1).png",width: 40,)
            ],
          ),
        ),
      ),
      body: Column(
        children: [
         const  SizedBox(
            height: 50,
          ),
          Center(child: Image.asset("assets/images/Image.png")),
        const   SizedBox(
            height: 25,
          ),
        const   Align(
            alignment: Alignment.centerLeft,
            child: Text("  Caffee Mocha",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),),
          ),
          
          Row(
            
            children: [
              Text("   Ice/hot",style: TextStyle(
                color: Colors.grey[400],
              ),),
             const   Spacer(),
               Image.asset("assets/images/Fast Delivery.png"),
              const  SizedBox(width: 15,),
               Image.asset("assets/images/Quality Bean.png"),
               const  SizedBox(width: 15,),
                Image.asset("assets/images/Extra Milk.png"),
                const  SizedBox(width: 15,),
      
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/images/Rating.png")),
        const   SizedBox(
            height: 20,
          ),
          Container(
            width: 340,
            height: 1,
            color: const Color.fromARGB(255, 222, 219, 219),
          ),
        const   Align(
            alignment: Alignment.centerLeft,
            child: Text("   Discribtion",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
        const   Text("A cappuccino is an approximately 150 ml (5 oz) beverage\nwith 25 ml of espresso coffee and 85 ml of fresh milk.\nThe foam gives it a smooth and creamy texture.",
          style: TextStyle(
            color: Color.fromARGB(255, 178, 176, 176)
          ),),
        const     Padding(
            padding: EdgeInsets.only(right: 325.0),
            child: Text("  Size",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
           Row(
              children: List.generate(
                sized.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                    });
                    showPriceSheet();
                    },
                   
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      
                      width: 100,
                      height: 50,
                          decoration: BoxDecoration(
                          color: selectedSize == index
                            ? const Color.fromARGB(255, 246, 210, 196)
                            : const Color.fromARGB(255, 251, 246, 246),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          sized[index],
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: selectedSize == index
                                ? const Color.fromARGB(255, 234, 143, 7)
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
     
    );
  }
  
}