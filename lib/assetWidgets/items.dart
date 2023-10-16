import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/models.dart';

final player = AudioPlayer();

class NumbersItem extends StatelessWidget {
  const NumbersItem({super.key, required this.number});

  final NumbersClass number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.orange,
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DB), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                player.play(AssetSource(number.soundPath));
                print('Tapped');
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});

  final FamilyClass member;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color(0xff4F7930),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DB), child: Image.asset(member.image)),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  member.enName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                player.play(AssetSource(member.soundPath));
                print('Tapped');
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});

  final ColorsClass color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color(0xff7D3EA2),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DB), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  color.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  color.enName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                player.play(AssetSource(color.soundPath));
                print('Tapped');
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase});

  final PhrasesClass phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Color(0xff47A2C8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                player.play(AssetSource(phrase.soundPath));
                print('Tapped');
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
