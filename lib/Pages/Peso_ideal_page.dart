import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PesoIdealPage extends StatefulWidget {
  const PesoIdealPage({super.key});

  @override
  State<PesoIdealPage> createState() => _PesoIdealPageState();
}

class _PesoIdealPageState extends State<PesoIdealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.accessibility_new_rounded, color: Colors.white),
        title: Text(
          'Saiba seu peso',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 141, 64, 177),
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.pinkAccent,
            ],
          ),
        ), //O child utiliza um único Widget. Por exemplo, dentro de um widget container você irá colocar apenas UM widget texto.
        //child: Text('Exemplo de child'); Já o children você utiliza quando quer utilizar uma LISTA de widgets.
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 30),
          const Text("Teste do IMC",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              )),
          const SizedBox(height: 15),
          const CupertinoTextField(
            cursorColor: Colors.pinkAccent,
            padding: EdgeInsets.all(15),
            placeholder: "Digite o seu peso",
            prefix: Icon(
              Icons.fitness_center,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                )),
          ),
          const SizedBox(height: 5),
          const CupertinoTextField(
            cursorColor: Colors.pinkAccent,
            padding: EdgeInsets.all(15),
            placeholder: "Digite sua altura",
            prefix: Icon(
              Icons.height,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
            style: TextStyle(color: Colors.white, fontSize: 14),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(7))),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              // Ação para calcular o IMC
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
