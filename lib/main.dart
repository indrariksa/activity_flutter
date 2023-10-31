import 'package:dicoding_final/activity_list.dart';
import 'package:dicoding_final/home.dart';
import 'package:dicoding_final/kegiatan.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_final/galeri.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/home': (context) => Home(),
        '/activity': (context) => ActivityPage(),
        '/galeri': (context) => GaleriPage(),
        '/activity_list': (context) => MainScreen(),
      },
      home: Home(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
