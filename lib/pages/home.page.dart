import 'package:flutter/material.dart';
import 'package:shopping/widgets/caixa-pesquisa.widget.dart';
import 'package:shopping/widgets/categorias/lista-categorias.widget.dart';
import 'package:shopping/widgets/produtos/lista-produto.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60,
            ),
            const CaixaPesquisa(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Categorias",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 90,
              child: ListaCategoria(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mais vendidos",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                TextButton(
                  child: const Text(
                    "Ver todos",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 320,
              child: ListaProduto(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
