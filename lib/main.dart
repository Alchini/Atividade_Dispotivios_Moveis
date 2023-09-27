import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaBoasVindas(),
  ));
}

class TelaBoasVindas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              child: Text('Ver filmes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NovaTela()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NovaTela extends StatelessWidget {
  final List<Map> filmes = [
    {"titulo": "O Poderoso Chefão", "genero": "Drama", "imagem": "assets/images/aorigem.jpg"},
    {"titulo": "A Origem", "genero": "Ficção científica", "imagem": "assets/images/poderoso.jpg"},
    {"titulo": "Vingadores: Ultimato", "genero": "Ação", "imagem": "assets/images/vingadores.jpg"},
    {"titulo": "A Felicidade Não se Compra", "genero": "Reflexivo", "imagem": "assets/images/felicidade.jpg"},
    {"titulo": "Jurassic Park", "genero": "Ação", "imagem": "assets/images/park.jpg"},
    {"titulo": "De Volta Para o Futuro", "genero": "Ficção científica", "imagem": "assets/images/futuro.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(filmes[index]['imagem']),
            title: Text(filmes[index]['titulo']),
            subtitle: Text(filmes[index]['genero']),
          );
        },
      ),
    );
  }
}
