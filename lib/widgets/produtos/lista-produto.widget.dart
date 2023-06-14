import 'package:flutter/material.dart';
import 'package:shopping/widgets/produtos/item-produto.widget.dart';

class ListaProduto extends StatelessWidget {
  final Axis scrollDirection;
  const ListaProduto({super.key, required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      children: const [
        ItemProduto(
          titulo: "Nike Dry-Fit Long Sleeve",
          marca: "Nike",
          image: "product-10.png",
          preco: 150,
        ),
        ItemProduto(
          titulo: "BeoPlay Speaker",
          marca: "Bang and Olufsen",
          image: "product-1.png",
          preco: 755,
        ),
        ItemProduto(
          titulo: "Leather Wristwatch",
          marca: "Tag Heuer",
          image: "product-2.png",
          preco: 450,
        ),
        ItemProduto(
          titulo: "Smart Bluetooth Speaker",
          marca: "Google Inc.",
          image: "product-3.png",
          preco: 900,
        ),
        ItemProduto(
          titulo: "Smart Luggage",
          marca: "Smart Inc.",
          image: "product-4.png",
          preco: 1000,
        ),
      ],
    );
  }
}
