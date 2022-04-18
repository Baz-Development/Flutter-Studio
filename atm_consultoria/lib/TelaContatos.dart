import 'package:flutter/material.dart';

class TelaContatos extends StatefulWidget {
  const TelaContatos({Key? key}) : super(key: key);

  @override
  State<TelaContatos> createState() => _TelaContatosState();
}

class _TelaContatosState extends State<TelaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contatos",
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
                Image.asset("images/detalhe_contato.png"),
                const Text(
                  "Contatos",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.teal,
                      fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
                    top: 20
                ),
                child: Text("Contatos:")
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                        "Email: fbazmitsuishi@gmail.com"
                    ),
                    Text(
                        "Site: baz.dev.com"
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
