
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: appBar() ,
  ));
  
}
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Example"),

      ),
      body: Column(
        children: [

     ] ),


    );
  }
}

