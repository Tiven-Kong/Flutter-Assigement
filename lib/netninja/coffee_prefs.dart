import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});
 void Hellobro(){

   print("Hello bro") ;
 }
  void Hibro(){

    print("Hi bro") ;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
              children:[
                const Text('Strength: '),
                const Text('3'),
                Image.asset('assets/img/coffee_bean.png',
                  width: 25,
                  colorBlendMode: BlendMode.multiply,
                  color: Colors.brown[100],
                ),

                const Expanded(child: SizedBox()),
                FilledButton(onPressed: (){

                  Hellobro()  ;
    }, child: Text("+"))

              ]

          ),
          Row(
              children: [
                const Text('Sugars: '),
                const Text('3'),
                Image.asset('assets/img/Flower.png',
                  width: 25,
                  colorBlendMode: BlendMode.multiply,
                  color: Colors.brown[100],
                ),
                const Expanded(child: SizedBox()),

                FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: (){
                  Hibro();

                }
                    , child: Text("+"))
              ]
          ),
        ]
    );
  }
}