 import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(
home:Scaffold(
    appBar:AppBar(
      backgroundColor: Colors.brown,
      title: Text("Ex1"),
    ) ,
        body: Container(
          color: Colors.black,
    height: 500,

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
                margin: EdgeInsets.fromLTRB(40, 40, 40, 0),

               child:Container(
            decoration:  BoxDecoration(color:Colors.red , borderRadius:BorderRadius.circular(20) , ) ,

                 child: Center(
                  child: Row(
                    children:[
                        Container(
                             padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: Icon(

                  Icons.travel_explore,       // Choose an icon
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
                margin: EdgeInsets.fromLTRB(40, 10, 40, 0),

                child:Container(
                  decoration:  BoxDecoration(color:Colors.red , borderRadius:BorderRadius.circular(20) , ) ,

                  child: Center(
                    child: Row(
                      children:[
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                          child: Icon(

                            Icons.skateboarding,       // Choose an icon
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

  
),
  ));
}