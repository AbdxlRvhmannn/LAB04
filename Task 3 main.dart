import 'package:flutter/material.dart';

void main() {
  runApp(ScrollableListViewApp());
}

class ScrollableListViewApp extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollable ListView'),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(Icons.label),
                title: Text(items[index]),
                subtitle: Text('Text for ${items[index]}'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('${items[index]} tapped');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
