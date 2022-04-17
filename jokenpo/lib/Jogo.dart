import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = const AssetImage("images/padrao.png");
  final _escolhas = [
    const AssetImage("images/pedra.png"),
    const AssetImage("images/papel.png"),
    const AssetImage("images/tesoura.png")
  ];

  var _mensagem = "Escolha uma opcao abaixo";

  void _jogada(int _userEscolha) {
    // pedra = 0, papel = 1, tesoura = 2
    var _escolha = Random().nextInt(3);

    setState(() {
      _imagemApp = _escolhas[_escolha];
    });

    if (
      (_userEscolha == 0 && _escolha == 2) ||
      (_userEscolha == 2 && _escolha == 1) ||
      (_userEscolha == 1 && _escolha == 0)
    ){
      print("User wins");
      setState(() {
        _mensagem = "Voce ganhou :)";
      });
    }else if(
      (_userEscolha == 2 && _escolha == 0) ||
      (_userEscolha == 1 && _escolha == 2) ||
      (_userEscolha == 0 && _escolha == 1)
    ) {
      print("Computer wins");
      setState(() {
        _mensagem = "Voce perdeu :(";
      });
    }else {
      print("Empate");
      setState(() {
        _mensagem = "Deu empate";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "JokenPo",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image(
            image: _imagemApp,
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset(
                    "images/pedra.png",
                    height: 95
                ),
                onTap: () => _jogada(0),
              ),
              GestureDetector(
                child: Image.asset(
                    "images/papel.png",
                    height: 95
                ),
                onTap: () => _jogada(1),
              ),
              GestureDetector(
                child: Image.asset(
                    "images/tesoura.png",
                    height: 95
                ),
                onTap: () => _jogada(2),
              )
            ],
          )
        ],
      ),
    );
  }
}
