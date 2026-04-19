import 'package:coffe_app/models/coffee_model.dart';
import 'package:coffe_app/screens/detail_screen.dart';
import 'package:coffe_app/widgets/coffee_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>coffee=['All Coffee','Machito','Latte','Americano'];
  int SelectedIndex=-1;
  List<CoffeeModel>coffeee =[
    CoffeeModel(
    name: "Caffe Mocha",
    type: "Deep Foam",
    price: 4.53,
    image: "assets/images/Image & Rating.png",
  ),
   CoffeeModel(
    name: "Flat White",
    type: "Espsores",
    price: 3.53,
    image: "assets/images/Image & Rating (1).png",
  ),
   CoffeeModel(
    name: "Latte",
    type: "Deep Foam",
    price: 3.53,
    image: "assets/images/Image & Rating (2).png",
  ),
  CoffeeModel(
    name: "Americano",
    type: "Espsores",
    price: 3.52,
    image: "assets/images/Image & Rating (3).png",
  ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
         currentIndex = index;
    });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items:  const [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "notification"),
       BottomNavigationBarItem(icon:Icon( Icons.favorite_outline_sharp),label: "favorite"),
       BottomNavigationBarItem(icon: Icon(Icons.lock),label: "lock"),
        
      ]),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children:[
               Container(
              height: screenHight/3,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                const  SizedBox(
                    height: 50,
                  ),
                 const Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: Text("Location",
                    style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                  Row(
                    children: [
                      Text("        Bilzen,Tanjungbalai",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        fontWeight: FontWeight.bold
            
                      ),),
                      Icon(Icons.keyboard_arrow_down_sharp,color: Colors.grey[400],)
                    ],
                  ),
                   const SizedBox(
                    height: 50,
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF111111),
                            borderRadius: BorderRadius.circular(15)
                           
                          ),
                          child: Row(
                           
                            children: [
                               const SizedBox(
                                width: 30,
                              ),
                              Image.asset("assets/images/Search.png",),
                              const SizedBox(
                                width: 15,
                              ),
                              Text("Search Coffee",style: 
                              TextStyle(
                                color:  Colors.grey[500],
                              ),),
                          
            
                            ],
                          ),
                        ),
                         const SizedBox(
                                width: 30,
                              ),
            
                           Image.asset("assets/images/Filet.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -70, 
               right: 20,
               left: 20,
              
              child: Image.asset("assets/images/Banner.png"))
            ]
          ),
         const  SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
               itemCount: coffee.length,
                separatorBuilder: (co,val){
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemBuilder: (context,index){
                  bool isSelect =index==SelectedIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        SelectedIndex=index;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isSelect? const Color.fromARGB(255, 208, 135, 26):const Color.fromARGB(255, 252, 245, 245),
                        borderRadius: BorderRadius.circular(10),
                      
                                
                      ),
                      child: Center(
                        child: Text(coffee[index],style: TextStyle(
                          color: isSelect? Colors.white:Colors.black
                        ),),
                      ),
                    ),
                  );
            
                },
            
             ),
      
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 0.75),
              itemCount: coffeee.length,
             itemBuilder:(context,index){
              return GestureDetector(
                onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => DetailScreen(coffee: coffeee[index],)));
                },
                child: CoffeeWidget(coffee: coffeee[index]));
             }),
          )
      
        ],
      ),
    );
  }
}