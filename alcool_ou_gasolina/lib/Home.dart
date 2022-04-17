import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _alcoolController = TextEditingController();
  final TextEditingController _gasolinaController = TextEditingController();
  String _resultado = "Resultado";
  void _calcular() {
    double? _alcool = double.tryParse( _alcoolController.text );
    double? _gasolina = double.tryParse( _gasolinaController.text );
    if (
      (_alcool == null || _gasolina == null) ||
      (_alcool < 0 || _gasolina < 0)
    ) {
      print("Preco null");
      setState(() {
        _resultado = "Numero invalido, digite numeros maiores que 0";
      });
    }else {
      if ( ( _alcool / _gasolina ) >= 0.7 ) {
        setState(() {
          _resultado = "Melhor abastecer com gasolina";
        });
      }else {
        setState(() {
          _resultado = "Melhor abastecer com alcool";
        });
      }
      _limparCampos();
    }
  }

  void _limparCampos() {
    _alcoolController.text = "";
    _gasolinaController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alcool ou gasolina",
          style: TextStyle(
            fontSize: 17,
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png"),
              const Padding(
                padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10
                ),
                child: Text(
                  "Saiba qual a melhor opcao para abastecimento do seu veiculo:",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black
                  ),
                ),
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Preco do alcool, ex 1.59"
                ),
                keyboardType: TextInputType.number,
                controller: _alcoolController,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Preco da gasolina, ex 2.59"
                ),
                keyboardType: TextInputType.number,
                controller: _gasolinaController,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 20
                  ),
                  child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                          "Calcular"
                      ),
                      onPressed: _calcular
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  _resultado,
                  style: const TextStyle(
                      fontSize: 22
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
