import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Image.asset(imagePath, width: 50,),
    );
  }
}
