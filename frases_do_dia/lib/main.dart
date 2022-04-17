import 'dart:math';

import 'package:flutter/material.dart';

void main(){

  runApp(
      const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      )
  );

}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    'Frase 1',
    'Frase 2',
    'Frase 3',
    'Frase 4',
    'Frase 5',
    'Frase 6',
    'Frase 7',
    'Frase 8',
    'Frase 9',
    'Frase 10'
  ];

  var _fraseGerada = "Clique no Botao para gerar uma frase:";

  void _gerarFrase(){
    var _numAleatorio = Random().nextInt(10);
    setState(() {
      _fraseGerada = _frases[_numAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases Do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: const Text(
                  "Clique aqui",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
