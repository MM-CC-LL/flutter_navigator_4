import 'package:flutter/material.dart';
import 'package:flutter_navigator_4/models/treino.dart';

class Detalhes extends StatelessWidget 
{
  const Detalhes({Key? key, required this.produto}) : super(key: key);

  final Treino produto;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(produto.nome), //Titulo vindo direto do objeto.
        backgroundColor: Colors.black87, //Cor de fundo da AppBar.
      ),
      backgroundColor: Colors.grey, //Cor de fundo da tela.
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: 
          [
            Image.asset(produto.image),
            const Padding(padding: EdgeInsets.all(20)),
            Text(produto.nome),
             const Padding(padding: EdgeInsets.all(5)),
            Text(produto.exer),
            const Padding(padding: EdgeInsets.all(10)),
            Text(produto.preco),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () 
              {
                Navigator.pop(context);
              },
              child: const Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
