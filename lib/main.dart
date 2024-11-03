import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Column Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'This is a Column with text.',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'You can add more text widgets here.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20), // Add space between items
              Text(
                'Enjoy coding!',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
