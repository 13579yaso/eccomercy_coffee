import 'package:ecommercy/coffee_tile.dart';
import 'package:ecommercy/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // const HomePage ({Key? key}) : super(key: key);
  final List coffeeType=[
    //[coffee type , isSelected]
   [
     'Cappucino',
     true,
   ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  //user taped on coffee type
  void coffeeTypeSelected(int index){
      setState((){
        // this for loop make all selection false
        for(int i=0;i<coffeeType.length;i++){
          coffeeType[i][1]=false;
        }
   coffeeType[index][1]=true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
            icon:Icon (Icons.home),
          label: ''
        ),
          BottomNavigationBarItem(
              icon:Icon (Icons.favorite),
              label: ''
          ),
          BottomNavigationBarItem(
              icon:Icon (Icons.notifications),
              label: ''
          ),
      ],
      ),
      body: Column(
        children: [
     // find the best coffee for you
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Find the best coffee for you',
          style: GoogleFonts.bebasNeue(
            fontSize: 56,
          ),
            ),
          ),
     SizedBox(
       height: 25,
     ),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25),
       child: TextField(
         decoration: InputDecoration(
           prefixIcon: Icon(Icons.search),
           hintText: 'Find your coffee..',
           focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.grey.shade600),
           ),
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.grey.shade600),
           ),
         ),
       ),
     ),
          SizedBox(
            height: 25,
          ),

     Container(
       height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: coffeeType.length,
          itemBuilder: (context, index) {
        return CoffeeType(
          coffeeType: coffeeType[index][0],
          isSelected: coffeeType[index][1],
          onTap: (){
            coffeeTypeSelected(index);
          },
        );
      })
     ),




     Expanded(child:
         ListView(
           scrollDirection: Axis.horizontal,
           children: [
             CoffeeTile(
               coffeeImagepath: 'assets/latt.jpg',
               coffeeName: 'Latte',
               coffeePrice: '4.20',
             ),
             CoffeeTile(
               coffeeImagepath: 'assets/capp.jpg',
               coffeeName: 'Cappucino',
               coffeePrice: '4.10',
             ),
             CoffeeTile(
               coffeeImagepath: 'assets/milk.jpg',
               coffeeName: 'Milk Coffee ',
               coffeePrice: '4.60',
             ),
           ],
         ),
     ),

     // searsh Bar

     //horizantal listview of coffee tiles
        ],
      ),
    );
  }
}
