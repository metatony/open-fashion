// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EAEF),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: ImageIcon(AssetImage('images/Menu.png'), color: Colors.black),
        title: Image.asset('images/Logo.png'),
        actions: [
          Image.asset('images/Search.png'),
          Image.asset('images/shopping bag.png'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Body(),
          ],
        ),
      ),
    );
  }
}
