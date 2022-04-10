import 'package:flutter/material.dart';

class Treino
{
  final String nome;
  final String preco;
  final String exer;
  final int id;
  final String image;

  const Treino(this.nome, this.preco, this.exer, this.id, this.image);
}

class Img
{
   final Image imagem;

   const Img(this.imagem);
}