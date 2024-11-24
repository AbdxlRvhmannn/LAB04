import 'package:flutter/material.dart';

void main() {
  runApp(ComplexUIApp());
}

class ComplexUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Complex UI'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.blueAccent,
                child: Text(
                  'Welcome to Flutter!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Left Button Pressed');
                    },
                    child: Text('Left'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Right Button Pressed');
                    },
                    child: Text('Right'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Center(
                  child: Text('Nested Container'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
