import 'package:flutter/material.dart';

class ItemCategoria extends StatelessWidget {
  final String image;
  const ItemCategoria({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 2.0),
            blurRadius: 5,
            spreadRadius: 3,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: Image.asset(image),
    );
  }
}
