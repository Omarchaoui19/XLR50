
// EV_Loader Open Version (No Activation, No Login)
// Main entry point
import 'package:flutter/material.dart';

void main() {
  runApp(EVLoaderApp());
}

class EVLoaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XLR-50',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> achievements = [
    'Achievement 1',
    'Achievement 2',
    'Achievement 3'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('XLR-50 – Unlocked')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Welcome to XLR-50!\nAll features are unlocked.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          ...achievements.map((item) => Card(
                child: ListTile(
                  leading: Icon(Icons.star),
                  title: Text(item),
                  subtitle: Text('Unlocked achievement'),
                ),
              )),
        ],
      ),
    );
  }
}
