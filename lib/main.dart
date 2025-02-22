import 'package:flutter/material.dart';
import 'package:stage_3d/screens/home_page.dart';

void main() {
  runApp(const Stage3D());
}

class Stage3D extends StatelessWidget {
  const Stage3D({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '3D Rendering App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
