import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: false,
          leading: Icon(Icons.login),
          actions: [Text("Action"), Icon(Icons.login)],
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
