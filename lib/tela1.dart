import 'dart:math';
import 'package:cara_ou_coroa/resultado.dart';
import 'package:flutter/material.dart';

class Primeiratela extends StatefulWidget {
  const Primeiratela({super.key});

  @override
  State<Primeiratela> createState() => _PrimeiratelaState();
}

class _PrimeiratelaState extends State<Primeiratela> {
  var itens = ['cara', 'coroa'];
  var resultado = '';

  void _Exibiresultado() {
    var numero = Random().nextInt(2); // Gera 0 ou 1 aleatoriamente
    resultado = itens[numero]; // Escolhe 'cara' ou 'coroa' baseado no número

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(valor: resultado),
      ),
    );
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
            Image.asset('imagens/logo.png'),
            GestureDetector(
              onTap: _Exibiresultado,
              child: Image.asset('imagens/botao_jogar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
