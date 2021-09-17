import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String parOuImpar = "";
  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    if (numeroVezes % 2 == 0) {
      parOuImpar = "Par";
    } else {
      parOuImpar = "Ímpar";
    }
  }

  void limpa() {
    numeroVezes = 0;
    parOuImpar = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Página Inicial"),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.tealAccent])),
          width: 1900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Número de vezes em que o botão foi pressionado: $numeroVezes \n E esse numero é: ${parOuImpar == "" ? "..." : parOuImpar}",
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              // first FAB to perform decrement
              onPressed: () {
                setState(limpa);
              },

              child: Icon(Icons.delete_outline_outlined),
            ),
            FloatingActionButton(
              // second FAB to perform increment
              onPressed: () {
                setState(cliqueDoBotao);
              },
              child: Icon(Icons.add),
            ),
          ],
        ));
  }
}
