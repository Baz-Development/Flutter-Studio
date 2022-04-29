import 'package:flutter/material.dart';

class ResultadoPage extends StatefulWidget {
  int _escolha;
  ResultadoPage(this._escolha, {Key? key}) : super(key: key);

  @override
  State<ResultadoPage> createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  @override
  Widget build(BuildContext context) {

    var _imagePath = "images/moeda_cara.png";

    if(widget._escolha == 0) { // Cara
      print("Escolha cara");
      _imagePath = "images/moeda_cara.png";
    }else { // coroa
      print("Escolha coroa");
      _imagePath = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(_imagePath),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
