import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  final String image;
  final String titulo;
  final String marca;
  final double preco;
  const ProdutoPage({
    super.key,
    required this.image,
    required this.titulo,
    required this.marca,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0,
              expandedHeight: 500,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                titulo,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Por $marca"),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Detalhes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "O moletom com capuz de zíper inteiriço Nike Sportswear Tech Fleece é feito com tecido espaçador de dupla face para mantê-lo aquecido sem peso adicional. Um ajuste de gola ligeiramente mais alto no capuz ajuda a manter você seco em climas frios e úmidos",
              ),
            )
          ],
        ),
      ),
    );
  }
}
