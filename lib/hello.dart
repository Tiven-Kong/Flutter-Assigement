import 'package:flutter/material.dart';


class NewWidget extends StatelessWidget {
  final String text ;
  final Color textColor ;
  const NewWidget({
    required this.text , this.textColor=Colors.blue
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      // padding: EdgeInsets.all(40),
      // margin:  EdgeInsets.all(40) ,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            margin:  const EdgeInsets.all(40) ,
            decoration: BoxDecoration(color: textColor , borderRadius:BorderRadius.circular(55)),
            child: Center(
              child: Text(text),

            ),
          )


        ],

      ),

    );
  }


}