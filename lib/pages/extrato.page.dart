import 'package:flutter/material.dart';

class ExtratoPage extends StatefulWidget {
  @override
  _ExtratoPageState createState() => _ExtratoPageState();
}

class _ExtratoPageState extends State<ExtratoPage> {
  TextEditingController valorDepositoController = TextEditingController();
  TextEditingController tipoContaController = TextEditingController();
  TextEditingController numeroContaController = TextEditingController();
  TextEditingController agenciaController = TextEditingController();

  void _showDialog() {
    String _info = "Dados do Depósito:\n\n" +
        "Conta " +
        tipoContaController.text +
        "\nNumero: " +
        numeroContaController.text +
        "\nAgencia: " +
        agenciaController.text +
        "\nValor depositado: " +
        valorDepositoController.text +
        "\n";

    showDialog(
      builder: (BuildContext context) {
        //retorna o objeto do tipo Dialog
        return AlertDialog(
          title: Text("Dados do Depósito"),
          content: Text(_info),
          actions: <Widget>[
            // Botao usado para fechar a caixa de dialogo
            FlatButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: valorDepositoController,
              autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Valor do Depósito",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: tipoContaController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Tipo de Conta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: numeroContaController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Numero da Conta",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: agenciaController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Agencia",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog();
        },
        child: Icon(Icons.done_all),
        backgroundColor: Color(0xFF5CB5E1),
      ),
    );
  }
}
