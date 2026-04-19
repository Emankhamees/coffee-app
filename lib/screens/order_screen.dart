import 'package:flutter/material.dart';
import '../models/coffee_model.dart';

class OrderScreen extends StatefulWidget {
  final CoffeeModel coffee;

  const OrderScreen({super.key, required this.coffee});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    double total = widget.coffee.price * count;

    return Scaffold(
      
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             
            const Text("Order",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
           
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Delivery / Pickup
            Stack(
              
              children: [
                
                
                Expanded(
                  child: Container(
                    
                    width: 350,
                    height: 65,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                   
                  ),
                ),
                
                Positioned(
                  top: 7,
                  left: 7,
                  child: Container(
                    width: 180,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 148, 91, 70),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Deliver",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                Positioned(
                  right: 40,
                  top: 15,
                  child: Text("Pick Up",style: TextStyle(
                    fontSize: 20,
                   
                  ),),
                )
              ],
            ),

            const SizedBox(height: 20),

            /// Address
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Delivery Address",
                  style: TextStyle(
                    fontSize: 20
                    ,fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 5),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Jl. Kpg Sutoyo",
               style: TextStyle(
                    fontSize: 15
                    ,fontWeight: FontWeight.bold)
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
               style: TextStyle(
                color: Color.fromARGB(255, 182, 176, 176),
                    fontSize: 15
                    ,fontWeight: FontWeight.bold)
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 190,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: const Color.fromARGB(255, 195, 194, 194), 
                     width: 2,         
                     ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.edit_document,color: Colors.black),
                    Text("Edit Address",style: TextStyle(
                      fontSize: 20,
                      
                    ),)
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: const Color.fromARGB(255, 195, 194, 194), 
                     width: 2,         
                     ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.note_add_rounded,color: Colors.black),
                    Text("add note",style: TextStyle(
                      fontSize: 20,
                      
                    ),)
                    ],
                  ),
                ),
              ],
            ),
             const SizedBox(height: 20),

            /// Coffee Item
            Row(
              children: [
                Image.asset(widget.coffee.image, width: 70),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(widget.coffee.name,style: TextStyle(
                        fontSize: 23
                       ),),
                       Text(widget.coffee.type,style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                       ),),
                    ],
                  ),
                ),
                
                IconButton(
                  style: ButtonStyle(
                  
                  ),
                  onPressed: () {
                    setState(() {
                      if (count > 1) count--;
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text("$count",style: TextStyle(
                        fontSize: 20
                       ),),
                IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 3,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 220, 233)
              ),
            ),
            const SizedBox(height: 15),
            Image.asset("assets/images/Discount.png",width: 400,),
               const SizedBox(height: 10),
            /// Payment Summary
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Payment Summary",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Price",style: TextStyle(
                    fontSize:19,
                    ),),
                Text("\$ ${widget.coffee.price}"),
              ],
            ),

           const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Delivery Fee",style: TextStyle(
                    fontSize:19,
                    )),
                Text("\$ 1.0"),
              ],
            ),

            const Spacer(),
              
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 148, 91, 70),
                ),
                 child: Center(
                   child: Text("Order   \$ ${total + 1}",
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                   ),),
                 ),
              ),
            /// Order Button
           
          ],
        ),
      ),
    );
  }
}