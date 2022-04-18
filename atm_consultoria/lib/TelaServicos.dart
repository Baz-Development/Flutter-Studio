import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  const TelaServicos({Key? key}) : super(key: key);

  @override
  State<TelaServicos> createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Servicos",
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
                Image.asset("images/detalhe_servico.png"),
                const Text(
                  "Servicos",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.normal
                  ),
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
                    top: 20
                ),
                child: Text("Consultoria")
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Pedreiro"
                    ),
                    Text(
                      "Printor"
                    ),
                    Text(
                      "Consultor"
                    ),
                    Text(
                      "TI"
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
