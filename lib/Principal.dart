import 'dart:math';

import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  List atividades = ["Correr 15km", "Ler 10 Livros por semana", "Comer mais alface", "Fazer churrasco com os amigos"];
  String frases = "Motivações";
  List<Color> cores = [Colors.black, Colors.yellow, Colors.white, Colors.green];
  Color appBarColor = Colors.blue;
  Color corTexto = Colors.black;
  String textButton = "Nova Motivação";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atividades Aleatórias",style: TextStyle(
          color: corTexto
        ),),
        centerTitle: true,
        backgroundColor:appBarColor,
      ),
      body: Container(
        color: appBarColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              frases,
              style: TextStyle(fontSize: 24, color: corTexto, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                int aleatorio = Random().nextInt(atividades.length);
                int aleatorioColor = Random().nextInt(cores.length);
                if (appBarColor == Colors.black) {
                  appBarColor = Colors.white;
                  corTexto = Colors.black;
                }
                setState(() {
                  frases = atividades[aleatorio];
                  appBarColor = cores[aleatorioColor];
                  if (appBarColor == Colors.black) {
                    corTexto = Colors.white;
                  }
                  textButton = "Mais uma Motivação";
                });
              },
              child: Text(textButton),
            )
          ],
        ),
      ),
    );
  }
}
