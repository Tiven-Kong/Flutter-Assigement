import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "MON",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Icon(Icons.card_giftcard),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 45, top: 30),
              child: Column(

                children: [
                  Row(
                    children: [
                      Text(
                        "Hello, Alex!",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    children: [
                      Text(
                        "New Collection from Versarch",
                        style: TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/Glass.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 4),
                        left: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 4),
                        right: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Icon(Icons.arrow_right),
                  ),


                ],
              ),

            ),

            Container(

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  // Align children to the start (left)
                  children: List.generate(3, (index) {
                    return Container(
                      width:(index==2)?200:140,

                      // Set width for each container
                      height: 30, // Set height for each container
                      margin: EdgeInsets.only(left: (index==0)?20:8 ,top:7),
                    // Margin between containers
                      child: Center(
                        child: Text(
                          index == 0 ? "Accesories" :
                          index == 1 ? "Clothing" :
                          index == 2 ? "Food And Drink" :
                          "Nothing" ,
                          style: TextStyle(color: Colors.black , fontSize: 23 , fontWeight: FontWeight.bold),

                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            Container(
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                    children: List.generate(3, (index) {
                      return Container(
                          width: 200,
                          height: 280,
                          margin: EdgeInsets.only(right: 40 ,left: (index==0)?30:0 ),
                          decoration: BoxDecoration(
                            color: Colors.grey,

                            image: DecorationImage(
                                image:AssetImage(index==0?"assets/img/watch.png":
                                index==1?"assets/img/apple-watch.png":
                                    index==2?"assets/img/3watch.png":
                                "This is item") , // Set image width


                             ),
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(width: 3 ,color: Colors.white54),

                          ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 0), // Adjust the padding as needed
                              child:Column(
                                children: [

                                  Container(
                                    child:Text( index==0?'Watch':
                                    index==1?'bag':
                                    index==2?'girl bag':
                                    "Hello" ,style:TextStyle(color:Colors.red) ,),
                                  ),
                                  Container(
                                    child:Text( index==0?'1999\$':
                                    index==1?'300\$':
                                    index==2?'Phone 1580\$':
                                    "Hello" ,style:TextStyle(color:Colors.red) ,),
                                  ),

                                ],
                              )


                            ),
                          ],
                        ),


                      );
                    },
                    ),

                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
