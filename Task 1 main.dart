import 'package:flutter/material.dart';

void main() {
  runApp(SimpleUIApp());
}

class SimpleUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple UI'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text('Press Me'),
              ),
              SizedBox(height: 20),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
