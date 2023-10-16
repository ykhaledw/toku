import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/assetWidgets/items.dart';
import 'package:toku/models/models.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({
    super.key,
  });

  /*final NumbersClass one = const NumbersClass(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/

  final List<NumbersClass> numbers = const [
    NumbersClass(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one',
        soundPath: 'sounds/numbers/number_one_sound.mp3' 
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        soundPath: 'sounds/numbers/number_two_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        soundPath: 'sounds/numbers/number_three_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        soundPath: 'sounds/numbers/number_four_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        soundPath: 'sounds/numbers/number_five_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        soundPath: 'sounds/numbers/number_six_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        soundPath: 'sounds/numbers/number_seven_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight',
        soundPath: 'sounds/numbers/number_eight_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine',
        soundPath: 'sounds/numbers/number_nine_sound.mp3'
        ),
    NumbersClass(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'ten',
        soundPath: 'sounds/numbers/number_ten_sound.mp3'
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, i) => NumbersItem(
          number: numbers[i],
        ),
      ),
    );
  }
}
