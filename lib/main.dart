import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MaterialApp
//Scaffold
//App title
//Button navigation bar state

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectIndex = 0;
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
        appBar: AppBar(title: Text("Flutter App")),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
          ],
          onDestinationSelected: (int value) {
            setState(() {
              selectIndex = value;
            });
          },
          selectedIndex: selectIndex,
        ),
      ),
    );
  }
}
