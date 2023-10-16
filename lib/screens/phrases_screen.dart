import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/assetWidgets/items.dart';
import 'package:toku/models/models.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<PhrasesClass> phrases = const [
    PhrasesClass(soundPath: 'sounds/phrases/what_is_your_name.wav', jpName: 'Anata no namae wa nanidesu ka?', enName: 'What\'s your name ?'),
    PhrasesClass(soundPath: 'sounds/phrases/how_are_you_feeling.wav', jpName: 'Go kibun wa ikagadesu ka?', enName: 'How are you feeling ?'),
    PhrasesClass(soundPath: 'sounds/phrases/are_you_coming.wav', jpName: 'Kimasu ka?', enName: 'Are you coming ?'),
    PhrasesClass(soundPath: 'sounds/phrases/yes_im_coming.wav', jpName: 'Hai, kimasu', enName: 'Yes, I\'m coming'),
    PhrasesClass(soundPath: 'sounds/phrases/dont_forget_to_subscribe.wav', jpName: 'Kōdoku suru koto o wasurenaide kudasai', enName: 'Don\'t forget to subscribe'),
    PhrasesClass(soundPath: 'sounds/phrases/i_love_anime.wav', jpName: 'Watashi wa anime ga daisukidesu', enName: 'I love anime'),
    PhrasesClass(soundPath: 'sounds/phrases/i_love_programming.wav', jpName: 'Watashi wa puroguramingu ga daisukidesu', enName: 'I love programming'),
    PhrasesClass(soundPath: 'sounds/phrases/programming_is_easy.wav', jpName: 'Puroguramingu wa kantandesu', enName: 'Prgramming is easy'),
    PhrasesClass(soundPath: 'sounds/phrases/where_are_you_going.wav', jpName: 'Doko ni iku no?', enName: 'Where are you going ?'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff47A2C8),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, i) => PhrasesItem(phrase: phrases[i])
        ),
    );
  }
}
