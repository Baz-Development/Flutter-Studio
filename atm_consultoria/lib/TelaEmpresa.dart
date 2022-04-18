import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Empresa",
          style: TextStyle(
            fontSize: 17
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_empresa.png"),
                const Text(
                  "Sobre a empresa",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
                    top: 20
                ),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
