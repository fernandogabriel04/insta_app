import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/Instagram-Logo.png", 
          height: 65,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: null, 
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: null, 
          ),
        ],
      ),
    );
  }
}