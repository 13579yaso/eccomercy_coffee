import 'package:ecommercy/homepage.dart';
import 'package:flutter/material.dart';
main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
      theme: ThemeData(
          brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),

    );
  }
}
