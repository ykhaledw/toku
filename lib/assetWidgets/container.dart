import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class CategoryButton extends StatelessWidget {
  CategoryButton(
      {required this.buttonColor,
      required this.buttonName,
      required this.onTap});

  Color buttonColor;
  String buttonName;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: buttonColor,
        width: double.infinity,
        child: Text(
          '$buttonName',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        height: 60,
      ),
    );
  }
}
