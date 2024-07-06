import 'package:flutter/material.dart';
import 'package:myapp/kuliner/about_kuliner.dart';
import 'package:myapp/kuliner/home_kuliner.dart';
import 'package:myapp/kuliner/kuliner.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/about': (context) => AboutKuliner(),
        '/home': (context)=> HomeKuliner(),
        '/wisata': (context) => ListKuliner()
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeKuliner(),
      ),
      );
    
  }
}
