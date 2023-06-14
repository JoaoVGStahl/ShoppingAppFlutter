import 'package:flutter/material.dart';
import 'package:shopping/widgets/categorias/item-categoria.widget.dart';

class ListaCategoria extends StatelessWidget {
  const ListaCategoria({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        ItemCategoria(image: "Icon_Devices.png"),
        ItemCategoria(image: "Icon_Gadgets.png"),
        ItemCategoria(image: "Icon_Gaming.png"),
        ItemCategoria(image: "Icon_Mens_Shoe.png"),
        ItemCategoria(image: "Icon_Womens_Shoe.png"),
      ],
    );
  }
}
