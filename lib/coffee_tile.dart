import 'package:flutter/material.dart';
class CoffeeTile extends StatelessWidget {
//  const CoffeeTile({Key? key}) : super(key: key);
  final String coffeeImagepath;
  final String coffeeName;
  final String coffeePrice;
 CoffeeTile({
 required  this.coffeeImagepath,
  required this.coffeeName,
  required this.coffeePrice,
 });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black54,
            borderRadius: BorderRadius.circular(12),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child: Image.asset(coffeeImagepath)),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   coffeeName,style: TextStyle(
                   fontSize: 20,
                 ),
                 ),
                 SizedBox(
                   height: 4,
                 ),
                 Text(
                   'With Almond Milk',style: TextStyle(
                     color: Colors.grey[700]
                 ),
                 ),
               ],
             ),
           ),
            // price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$'+coffeePrice
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                      child: Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
