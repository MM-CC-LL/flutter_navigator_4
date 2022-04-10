import 'package:flutter/material.dart';
import './screens/listProducts_screen.dart';


void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp(
      title: 'Marcello Vendas', //Titulo.
      home: FavoriteWidget(), //chama a lista de produtos (ou treino).
      debugShowCheckedModeBanner: false, //Remove o banner DEBUG no canto do appbar.
    );
    
  }
}
