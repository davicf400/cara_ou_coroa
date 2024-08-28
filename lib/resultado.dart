import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String valor;

  const Resultado({super.key, required this.valor});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  late String caminhoImagem;

  @override
  void initState() {
    super.initState();
    // Inicializando a imagem com base no valor recebido
    if (widget.valor == 'cara') {
      caminhoImagem = 'imagens/moeda_cara.png';
    } else {
      caminhoImagem = 'imagens/moeda_coroa.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem), // Mostrando a imagem correta
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('imagens/botao_voltar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
