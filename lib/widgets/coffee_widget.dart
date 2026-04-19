import 'package:coffe_app/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeWidget extends StatelessWidget {
  const CoffeeWidget({super.key, required this.coffee});
  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
          Image.asset(coffee.image,width: 400,
          height: 140,),
         
          Text(coffee.name,style:const  TextStyle(fontWeight: FontWeight.bold)),
          Text(coffee.type,style: const TextStyle(color: Colors.grey),
        
            ),
           const  SizedBox(
              height: 30,
            ),
          Text("\$ ${coffee.price.toStringAsFixed(2)}",style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              const  SizedBox(height: 20),
        ],
      )
      
        );
      
    
  }
}