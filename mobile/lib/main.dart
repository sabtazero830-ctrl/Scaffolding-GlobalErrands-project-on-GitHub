import 'package:flutter/material.dart';

void main() {
  runApp(GlobalErrandsApp());
}

class GlobalErrandsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlobalErrands',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalErrands'),
      ),
      body: Center(child: Text('Welcome to GlobalErrands mobile starter')),
    );
  }
}
