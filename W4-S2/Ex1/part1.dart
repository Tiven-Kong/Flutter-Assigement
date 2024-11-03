import 'package:flutter/material.dart';
import 'package:view/Button.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Ex1"),
        backgroundColor: Colors.brown,
      ),
      body: Part2(),
    ),
  ));
}


class Part2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(

      child:
      Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
                margin: EdgeInsets.fromLTRB(40, 40, 40, 0),

                child:Container(
                  decoration:  BoxDecoration(color:Colors.green , borderRadius:BorderRadius.circular(20) , ) ,

                  child: Center(
                    child: Row(
                      children:[
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: Icon(

                           Icons.travel_explore,   // Choose an icon
                            color: Colors.white,    // Set the icon color
                            size: 50.0,

                          ),

                        ),
                        Text("Search",

                          style: TextStyle(fontWeight: FontWeight.bold , color:Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ),

                )) ,
            Container(
                margin: EdgeInsets.fromLTRB(40, 40, 40, 0),

                child:Container(
                  decoration:  BoxDecoration(color:Colors.blueGrey, borderRadius:BorderRadius.circular(20) , ) ,

                  child: Center(
                    child: Row(
                      children:[
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: Icon(

                            Icons.travel_explore,   // Choose an icon
                            color: Colors.white,    // Set the icon color
                            size: 50.0,

                          ),

                        ),
                        Text("Search",

                          style: TextStyle(fontWeight: FontWeight.bold , color:Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ),

                )) ,




          ],

        ),
      ),
    );

  }
}
