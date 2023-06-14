import 'package:flutter/material.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: listaProdutos(context),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "TOTAL",
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "R\$450,00",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  margin: const EdgeInsets.only(right: 20),
                  decoration:  BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: TextButton(
                    child: Text(
                      "Pagamento",
                      style: TextStyle(color: Theme.of(context).hintColor),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listaProdutos(BuildContext context) {
    return ListView(
      children: [
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
        itemProduto(context),
      ],
    );
  }

  Widget itemProduto(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              "product-1.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Título do Produto"),
                 Text(
                  "R\$200,00",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                          child: const Text(
                            "+",
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: const Text("1"),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                          child: const Text("-",
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
