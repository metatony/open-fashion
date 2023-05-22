// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffE7EAEF)),
              child: Text('Menu')),
          ListTile(
            title: Text('New'),
          ),
          ListTile(
            title: Text('Apparel'),
          ),
        ],
      ),
    );
  }
}
