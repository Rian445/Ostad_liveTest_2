import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              child: Text(
                'Click Me',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
