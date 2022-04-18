import 'package:atm_consultoria/TelaClientes.dart';
import 'package:atm_consultoria/TelaContatos.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServicos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaEmpresa()
        )
    );
  }

  void _abrirServicos() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaServicos()
        )
    );
  }

  void _abrirClientes() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaCliente()
        )
    );
  }

  void _abrirContato() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaContatos()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ATM Consultoria",
          style: TextStyle(
            fontSize: 17,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(
                top: 32
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_empresa.png"),
                    onTap: _abrirEmpresa,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_servico.png"),
                    onTap: _abrirServicos,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_cliente.png"),
                    onTap: _abrirClientes,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_contato.png"),
                    onTap: _abrirContato,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
