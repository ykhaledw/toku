import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/assetWidgets/container.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4DB),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff4A322B),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Welcome to Toku',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'The Best App for Learning Japanese',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          CategoryButton(
              buttonColor: Colors.orange,
              buttonName: 'Numbers',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumbersScreen()));
                print('Numbers');
              }),
          CategoryButton(
              buttonColor: Color(0xff4F7930),
              buttonName: 'Family Members',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FamilyMembersScreen()));
                print('Family Members');
              }),
          CategoryButton(
              buttonColor: Color(0xff7D3EA2),
              buttonName: 'Colors',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorsScreen()));
                print('Colors');
              }),
          CategoryButton(
              buttonColor: Color(0xff47A2C8),
              buttonName: 'Phrases',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhrasesScreen()));
                print('Phrases');
              }),
        ],
      ),
    );
  }
}
