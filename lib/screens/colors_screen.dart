import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/assetWidgets/items.dart';
import 'package:toku/models/models.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<ColorsClass> colors = const [
    ColorsClass(
      soundPath: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black'),
    ColorsClass(
      soundPath: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown'),
    ColorsClass(
      soundPath: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow'),
    ColorsClass(
      soundPath: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Grey'),
    ColorsClass(
      soundPath: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
    ColorsClass(
      soundPath: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    ColorsClass(
      soundPath: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
    ColorsClass(
      soundPath: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7D3EA2),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, i) => ColorsItem(color: colors[i]),
      ),
    );
  }
}
