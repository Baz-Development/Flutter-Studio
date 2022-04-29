import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _valorBitCoin = "Resultado";

  void _atualizarValor() async {
    var url = Uri.parse("https://blockchain.info/ticker");
    http.Response response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String _valor = "R\$ ${retorno["BRL"]["buy"]}";
    setState(() {
      _valorBitCoin = _valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/bitcoin.png"),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 30
                  ),
                child: Text(
                  _valorBitCoin,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
              RaisedButton(
                onPressed: _atualizarValor,
                color: Colors.orange,
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                    left: 25,
                    right: 25
                  ),
                  child:  Text(
                    "Atualizar",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
