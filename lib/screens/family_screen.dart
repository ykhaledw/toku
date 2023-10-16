import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/assetWidgets/items.dart';
import 'package:toku/models/models.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<FamilyClass> familyMembers = const [
    FamilyClass(image: 'assets/images/family_members/family_father.png', jpName: 'Chichioya', enName: 'Father', soundPath: 'sounds/family_members/father.wav'),
    FamilyClass(image: 'assets/images/family_members/family_mother.png', jpName: 'Hahaoya', enName: 'Mother', soundPath: 'sounds/family_members/mother.wav'),
    FamilyClass(image: 'assets/images/family_members/family_grandfather.png', jpName: 'Sofu', enName: 'Grand Father', soundPath: 'sounds/family_members/grand father.wav'),
    FamilyClass(image: 'assets/images/family_members/family_grandmother.png', jpName: 'Sobo', enName: 'Grand Mother', soundPath: 'sounds/family_members/grand mother.wav'),
    FamilyClass(image: 'assets/images/family_members/family_older_brother.png', jpName: 'Ani', enName: 'Older Brother', soundPath: 'sounds/family_members/older bother.wav'),
    FamilyClass(image: 'assets/images/family_members/family_older_sister.png', jpName: 'Ane', enName: 'Older Sister', soundPath: 'sounds/family_members/older sister.wav'),
    FamilyClass(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'Otōto', enName: 'Younger Brother', soundPath: 'sounds/family_members/younger brohter.wav'),
    FamilyClass(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'Imōto', enName: 'Younger Sister', soundPath: 'sounds/family_members/younger sister.wav'),
    FamilyClass(image: 'assets/images/family_members/family_son.png', jpName: 'Musuko', enName: 'Son', soundPath: 'sounds/family_members/son.wav'),
    FamilyClass(image: 'assets/images/family_members/family_daughter.png', jpName: 'Musume', enName: 'Daughter', soundPath: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4F7930),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, i) => FamilyItem(
          member: familyMembers[i],
          ),
        ),
    );
  }
}
