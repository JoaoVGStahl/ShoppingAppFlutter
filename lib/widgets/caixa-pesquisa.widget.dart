import 'package:flutter/material.dart';
import 'package:shopping/widgets/caixa.animada.input.dart';

class CaixaPesquisa extends StatefulWidget {
  const CaixaPesquisa({super.key});

  @override
  State<CaixaPesquisa> createState() => _CaixaPesquisaState();
}

class _CaixaPesquisaState extends State<CaixaPesquisa>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool menuAberto = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CaixaAnimada(controller: _controller),
        TextButton(
          onPressed: () {
            !menuAberto ? _controller.forward() : _controller.reverse();
            menuAberto = !menuAberto;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            semanticLabel: "Abrir menu",
          ),
        ),
      ],
    );
  }
}
