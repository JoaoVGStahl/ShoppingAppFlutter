import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ItemProduto extends StatelessWidget {
  final String image;
  final String titulo;
  final String marca;
  final double preco;

  const ItemProduto({
    super.key,
    required this.image,
    required this.titulo,
    required this.marca,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      width: 170,
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdutoPage(
                    titulo: titulo,
                    marca: marca,
                    image: image,
                    preco: preco,
                  ),
                ),
              );
            },
            child: Hero(
              tag: image,
              child: Image.asset(
                image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: Text(
              titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            marca,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "R\$ $preco",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
    );
  }
}
