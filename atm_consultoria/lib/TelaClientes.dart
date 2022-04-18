import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Clientes",
          style: TextStyle(
              fontSize: 17
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_cliente.png"),
                const Text(
                  "Clientes",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.lime,
                      fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
                    top: 20
                ),
                child: Text("Clientes:")
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/cliente1.png"),
                        const Text(
                            "Sys"
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("images/cliente2.png"),
                        const Text(
                            "Rsm"
                        ),
                      ],
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
