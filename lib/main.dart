import 'package:flutter/material.dart';
import './ui/pasien_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pasien APP',
      debugShowCheckedModeBanner: false,
      home: PasienPage(),
    );
  }
}